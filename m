Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id D64535925C5
	for <lists+blinux-list@lfdr.de>; Sun, 14 Aug 2022 19:19:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1660497590;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Ydt3T6KzkaIVgEvFSQXTqL89EWbCqsKaTy8i66wZnrA=;
	b=WK+Szd8xKXfXy+2OT28ayIpHjyN5vLDRpeTrAzpIbxBETjYxmaZxwwuH+uQTiuPBoEitsk
	UvaOAdFG79Z7u6T83N1QE44XOz55N+F1lsXtYq+uk8lvxorbTV7pdUnopJ8lxmN+gZO/cn
	syBRNj0jgDcVs3frhZoopdDitsOaL3M=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-10-jWO239SoOFKLKgwRW2ewmw-1; Sun, 14 Aug 2022 13:19:47 -0400
X-MC-Unique: jWO239SoOFKLKgwRW2ewmw-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com [10.11.54.4])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 132F5101A54E;
	Sun, 14 Aug 2022 17:19:46 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id F38BB2026D64;
	Sun, 14 Aug 2022 17:19:38 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 6D8B31946A49;
	Sun, 14 Aug 2022 17:19:37 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Sun, 14 Aug 2022 13:19:33 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Meta: Sender names on the Blinux list
In-Reply-To: <mailman.574.1660492632.10506.blinux-list@redhat.com>
References: <mailman.573.1660489566.10500.blinux-list@redhat.com>
 <mailman.574.1660492632.10506.blinux-list@redhat.com>
MIME-Version: 1.0
Message-ID: <mailman.538.1660497576.10505.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Depending on your linux setup, use of procmail and spamassassin can weed
spam out and do it effectively.
The squirrelmail system isn't fully accessible with lynx and that's why I
don't use it.  I have email put in maildir format too since that way
malware filtering is easier too since the whole mbox file isn't
quarrantined but only the specific messages holding the malware.
The keys to managing spam is the ~/.spamassassin/user_prefs file.  You can
edit that with a text editor and so long as you get your formats correct,
it will work.
If I don't get useful mail from @spam.com, I put an entry like
BLACKLIST-FROM <tab>*@spam.com
in user_prefs and save that file then delete the offender from my inbox.
That * is important since anything from that domain gets blocked.
Depending on how spamassassin is set up, it can potentially report all of
that spam to data bases which will help adjust spamassassin for others.
This is admittedly a command line spam management approach but I find it
effective.  Something else to do is to copy that user_prefs file to one or
more other locations maybe with different names so anyone hacking your
system won't be able to permanently erase your work.



On Sun, 14 Aug 2022, Linux for blind general discussion wrote:

> You are not.
> A while back, a couple of years ago perhaps?
> someone managed to hack the list, taking email addresses, and sending  porn
> focused spam to members.
> for their protection, the list mods decided to keep from email addresses out
> of the field.
> Hope that helps,
>
>
>
> On Sun, 14 Aug 2022, Linux for blind general discussion wrote:
>
> > Hi all,
> >
> > Pardon a newbie question from someone who just recently re-joined this list.
> > Am I the only one who is only getting the list name in the From header of
> > emails on this list? If not, can anyone chime in on why this is happening? I
> > have my guess, but prefer verified facts over speculation.
> >
> > Thanks,
> > Matt Campbell
> > mattcampbell@pobox.com
> >
> > _______________________________________________
> > Blinux-list mailing list
> > Blinux-list@redhat.com
> > https://listman.redhat.com/mailman/listinfo/blinux-list
> >
> >
> >
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>
>
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

