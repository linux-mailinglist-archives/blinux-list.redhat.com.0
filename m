Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 53A925F5BBF
	for <lists+blinux-list@lfdr.de>; Wed,  5 Oct 2022 23:32:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1665005527;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=IYXjGLf5pO1lNnCCJd2ZrSciS5Yjg6gdeKGugFukAc4=;
	b=MBYzDf5afj/dQj+fZZIvyEQsVN1xAG0Q3hLUmuV7sqpkbBSswP/hbxDwPTfrhPD6fRnUSE
	VqgEtZTeu7VZBuXYnHyKw5iA1szJyK/V9c77nP0VYNTZe2QuLsTXCnHJbFqfR9+x1rv+yD
	C4Nqo7UzUBIan1I6VHw2KKInTmF2tKM=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-423-cNQDQ6w3PamhcsNZvN6YrQ-1; Wed, 05 Oct 2022 17:32:03 -0400
X-MC-Unique: cNQDQ6w3PamhcsNZvN6YrQ-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com [10.11.54.5])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C4675857D18;
	Wed,  5 Oct 2022 21:32:01 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id F041217585;
	Wed,  5 Oct 2022 21:31:52 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 811CB19433A5;
	Wed,  5 Oct 2022 21:31:52 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3696.120.41.1.1\))
Subject: Re: tdsr
Date: Wed, 5 Oct 2022 16:31:45 -0500
References: <mailman.5306.1664889720.6075.blinux-list@redhat.com>
 <mailman.5193.1664891202.6080.blinux-list@redhat.com>
 <mailman.5272.1664915489.6083.blinux-list@redhat.com>
 <mailman.5680.1664947080.6075.blinux-list@redhat.com>
 <mailman.5502.1664977583.6083.blinux-list@redhat.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
In-Reply-To: <mailman.5502.1664977583.6083.blinux-list@redhat.com>
Message-ID: <mailman.5759.1665005512.6083.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.5
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Using ls .bash_login
and sudo ls .bash_login
I am not finding that file.
I am in the home directory.
Am I doing something wrong?

> On Oct 5, 2022, at 08:37, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> 
> If 'bash' is your login shell, try adding the TDSR startup command to .bash_login in your home directory.  That should avoid the problems Tim indicated when a subshell is invoked.
> 
> You may have to create that file if it doesn't exist.  It is documented in the 'bash' manual page.
> 
> 
> On 10/5/2022 1:17 AM, Linux for blind general discussion wrote:
>> Or might it be easier to install espeakup, or install Fenrir?
>> I welcome anyone's ideas.
>> 
>>> On Oct 4, 2022, at 15:31, Linux for blind general discussion <blinux-list@redhat.com> wrote:
>>> 
>>> Maybe better to keep logging in, go to cd tdsr,
>>> then type
>>> ./tdsr
>>> cd ..
>>> as I already do.
>>> What you had written is far too advanced for me, but thank you.
>>> 
>>>> On Oct 4, 2022, at 08:46, Linux for blind general discussion <blinux-list@redhat.com> wrote:
>>>> 
>>>> Tim here.  It's a little tricky because, without additional
>>>> precautions, you open a shell which launches tdsr, which opens a
>>>> shell inside of it, which launches tdsr, which opens a shell
>>>> which...you get the idea.
>>>> 
>>>> So there needs to be a way for a shell to determine if it's already
>>>> inside a running session of tdsr.  This sort of thing is usually
>>>> done through setting an environment variable.  For example, I've
>>>> done similarly with "tmux", so I have a check in my startup file
>>>> (e.g. my ~/.bashrc) that tests
>>>> 
>>>> [ -z "$TMUX" ] && tmux
>>>> 
>>>> So first you'd want to see if tdsr sets an environment variable.
>>>> The documentation might detail this, but if not, you can dump the
>>>> environment to a file before running tdsr, then run tdsr, then dump
>>>> the environment to another file and compare them, like
>>>> 
>>>> $ env | sort > a
>>>> $ tdsr
>>>> (tdsr)$ env | sort > b
>>>> (tdsr)$ comm -13 a b
>>>> 
>>>> Hopefully this will show a setting something like a "$TDSR" variable
>>>> that you can check.  Then your ~/.bashrc (or whatever your startup
>>>> file is) can end with something like
>>>> 
>>>> [ -z "$TDSR" ] && tdsr
>>>> 
>>>> Because this can go unfortunately sideways, I recommend having one
>>>> window/console open, editing your ~/.bashrc and then open a *new*
>>>> window (or log in at another console) to test it.  If all goes
>>>> right, yay.  If things go sideways, you can quickly flip back to
>>>> the first window/console, remove that line from your ~/.bashrc, and
>>>> (re)save it.  This saves you a LOT of hassle if you accidentally
>>>> create a loop like described at the top of this email.
>>>> 
>>>> -Tim
>>>> 
>>>> On 2022-10-04 08:21, Linux for blind general discussion wrote:
>>>>> I have fedora 35, and while in the shell I use tdsr for screen-reader.
>>>>> To start it, one must use dot slash tdsr.
>>>>> Is there a way to have this program start whenever logging in at shell?
>>>>> 
>>>>> _______________________________________________
>>>>> Blinux-list mailing list
>>>>> Blinux-list@redhat.com
>>>>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>>>> 
>>>> _______________________________________________
>>>> Blinux-list mailing list
>>>> Blinux-list@redhat.com
>>>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>>> 
>>> _______________________________________________
>>> Blinux-list mailing list
>>> Blinux-list@redhat.com
>>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>> 
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

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

