Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id C02C95F4A52
	for <lists+blinux-list@lfdr.de>; Tue,  4 Oct 2022 22:31:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1664915505;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=SSB37oXr4CWA/LTjVlttbfRD8eopuIK+eFt3gupveUA=;
	b=dZwfjl+c88XulEj67P1GWc+OI/BMUoSh2478KKWV6gBZM2cCXoOqHYnnvYHaUHCQ1d6W53
	jmX8visDdPwkr02c0GnL3Dse21oW9vcmwUpJ0a32DMOznsd/Ngi8Dy5f/uQNt9x/gd648q
	9NzW0FSqxb3L3A+LN8pPvrEwPOo/MEY=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-330-5JsGGf8pPDaoEy9cvQMvHg-1; Tue, 04 Oct 2022 16:31:42 -0400
X-MC-Unique: 5JsGGf8pPDaoEy9cvQMvHg-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com [10.11.54.8])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id BC81D1C05AB8;
	Tue,  4 Oct 2022 20:31:40 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id A5AB3C15BA5;
	Tue,  4 Oct 2022 20:31:30 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id EC6811946A4F;
	Tue,  4 Oct 2022 20:31:29 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3696.120.41.1.1\))
Subject: Re: tdsr
Date: Tue, 4 Oct 2022 15:31:24 -0500
References: <mailman.5306.1664889720.6075.blinux-list@redhat.com>
 <mailman.5193.1664891202.6080.blinux-list@redhat.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
In-Reply-To: <mailman.5193.1664891202.6080.blinux-list@redhat.com>
Message-ID: <mailman.5272.1664915489.6083.blinux-list@redhat.com>
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <http://listman.redhat.com/archives/blinux-list/>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=subscribe>
Reply-To: blinux-list@redhat.com
Errors-To: blinux-list-bounces@redhat.com
Sender: "Blinux-list" <blinux-list-bounces@redhat.com>
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.8
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Maybe better to keep logging in, go to cd tdsr,
then type
./tdsr
cd ..
as I already do.
What you had written is far too advanced for me, but thank you.

> On Oct 4, 2022, at 08:46, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> 
> Tim here.  It's a little tricky because, without additional
> precautions, you open a shell which launches tdsr, which opens a
> shell inside of it, which launches tdsr, which opens a shell
> which...you get the idea.
> 
> So there needs to be a way for a shell to determine if it's already
> inside a running session of tdsr.  This sort of thing is usually
> done through setting an environment variable.  For example, I've
> done similarly with "tmux", so I have a check in my startup file
> (e.g. my ~/.bashrc) that tests
> 
>  [ -z "$TMUX" ] && tmux
> 
> So first you'd want to see if tdsr sets an environment variable.
> The documentation might detail this, but if not, you can dump the
> environment to a file before running tdsr, then run tdsr, then dump
> the environment to another file and compare them, like
> 
>  $ env | sort > a
>  $ tdsr
>  (tdsr)$ env | sort > b
>  (tdsr)$ comm -13 a b
> 
> Hopefully this will show a setting something like a "$TDSR" variable
> that you can check.  Then your ~/.bashrc (or whatever your startup
> file is) can end with something like
> 
>  [ -z "$TDSR" ] && tdsr
> 
> Because this can go unfortunately sideways, I recommend having one
> window/console open, editing your ~/.bashrc and then open a *new*
> window (or log in at another console) to test it.  If all goes
> right, yay.  If things go sideways, you can quickly flip back to
> the first window/console, remove that line from your ~/.bashrc, and
> (re)save it.  This saves you a LOT of hassle if you accidentally
> create a loop like described at the top of this email.
> 
> -Tim
> 
> On 2022-10-04 08:21, Linux for blind general discussion wrote:
>> I have fedora 35, and while in the shell I use tdsr for screen-reader.
>> To start it, one must use dot slash tdsr.
>> Is there a way to have this program start whenever logging in at shell?
>> 
>> _______________________________________________
>> Blinux-list mailing list
>> Blinux-list@redhat.com
>> https://listman.redhat.com/mailman/listinfo/blinux-list
>> 
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
> 

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

