Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	by mail.lfdr.de (Postfix) with ESMTP id 9EFB4202B93
	for <lists+blinux-list@lfdr.de>; Sun, 21 Jun 2020 18:36:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1592757365;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=N9oIqPi3aeQtGKk2St8Wl+ioxGS2cqr1a6tuIl6cBbk=;
	b=ClAvd7AGJRrlo1/viUb3lPQEFZ6JxOp09cR/GOoSxxUP5rURC7KmWLO/6cB59/KWWl+2CF
	uiHt0tcLNXnoZFCx/d/N6NcPyaadqaOnflMtLusdgBYmRz9FZxTVM2eO7mJAX78S794ExG
	Et3d8iw3siqsP69i7i8wsK7uWwM6OtI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-214-ASoU6235MhySlwTfD-erdw-1; Sun, 21 Jun 2020 12:36:02 -0400
X-MC-Unique: ASoU6235MhySlwTfD-erdw-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id F081F835B41;
	Sun, 21 Jun 2020 16:35:58 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7DBB25BAC1;
	Sun, 21 Jun 2020 16:35:58 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 09EFE1809547;
	Sun, 21 Jun 2020 16:35:58 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 05LGZtBK020963 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 21 Jun 2020 12:35:55 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id F363A2157F26; Sun, 21 Jun 2020 16:35:54 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id EF1092157F23
	for <blinux-list@redhat.com>; Sun, 21 Jun 2020 16:35:53 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id F1B8F8007C8
	for <blinux-list@redhat.com>; Sun, 21 Jun 2020 16:35:52 +0000 (UTC)
Received: from mail-ot1-f51.google.com (mail-ot1-f51.google.com
	[209.85.210.51]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-197-VzTlrA54MfW8EMoMMhlSyA-1; Sun, 21 Jun 2020 12:35:50 -0400
X-MC-Unique: VzTlrA54MfW8EMoMMhlSyA-1
Received: by mail-ot1-f51.google.com with SMTP id d4so11206153otk.2
	for <blinux-list@redhat.com>; Sun, 21 Jun 2020 09:35:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=yzLC0S1dw4K+Fz0d9Azqxou5Ha/0m/Y+8JK79E20oM8=;
	b=KktA1+Y/T9oyjEzcp4hwdaJ9zHO9xXa/K+Se4FVP/6l8V7GCvbZFkLS4eRTpQ93JNK
	W1qTvGNxtUYKge/o78f+Ori/em/PGKIu9SkO0wpuIuvauWH2kQDiiw0Wc5UPfkvHQUZo
	wr7Abw0mJtPx1OJLSLVAyIeLyRFwchAbGTtXeyQC7kuzncila5OWCCPA57Vj9EVuKxia
	+SG1P1UP3K3sVMrJ921rRyr/K6QjRumSMQgVUK6t8RWlyVoPWXN1I7mcovzvWcXn4dCD
	nxzLyiLoshF4CnmdgLSHBxahc1pQxUvPJZQDkNmj06XjiHqFyIx1i49FhqQmTTTTd5G3
	Tocw==
X-Gm-Message-State: AOAM530OJAux6VPtEQ6UifdFTlsS1ljbMnxVyxjgQ64zNSyc0aXfgtIq
	VZ6BrcpnWRl/TZ5JXfiiaoQhiN1/IGlfpVa58Q6h2I9z
X-Google-Smtp-Source: ABdhPJyJikqITU+2lSifEX93vFM3/qP0K0fEq17bI0b3cUsQin1aKXeYYH29UPSMXu3GNkwmgTEUoHaD1ki48X0l58o=
X-Received: by 2002:a05:6830:1657:: with SMTP id
	h23mr10474089otr.62.1592757349649; 
	Sun, 21 Jun 2020 09:35:49 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a9d:12d6:0:0:0:0:0 with HTTP; Sun, 21 Jun 2020 09:35:49
	-0700 (PDT)
In-Reply-To: <20200621074757.GA2690@rednote.net>
References: <DF019091-ECBE-48AC-8B3F-A85FCB13F98F@gmail.com>
	<68F8B348-C5F3-4E40-9731-CB928C1E1786@cfcl.com>
	<3FF9DFF0-EBA2-41FA-AF6D-41A15F7D96B3@gmail.com>
	<1E64643A-5D91-45E2-A546-970F7E14EF28@cfcl.com>
	<alpine.DEB.2.22.394.2006141355001.3348482@chime>
	<eb770c6c-c8e6-84d6-973c-e3afc118ca1b@slint.fr>
	<20200615100242.GC2180@rednote.net>
	<CABKqQvG5Nv14kAK-uipF1d4-mXqkea9Uk_0E8e+qbNGLN3XV=g@mail.gmail.com>
	<20200616065933.GF2180@rednote.net>
	<843663A4-EEEA-4DB7-A1CB-56C6A65E41BC@cfcl.com>
	<20200621074757.GA2690@rednote.net>
Date: Sun, 21 Jun 2020 11:35:49 -0500
Message-ID: <CABKqQvEyRFTSLg_38LtPaoUXgiz7Y8vsnM_d3No3fmQ2AmFEmw@mail.gmail.com>
Subject: Re: Prospects for an accessible and open version of Android?
To: blinux-list@redhat.com
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

A couple of questions about the MeerKat:
Do you have to plug in a mouse and/or monitor for it to work when it
starts up? I had this experience on another Ubuntu system
Can you get a built-in battery? I don't understand the point of a tiny
device if you have to plug it in to use it.

Amanda

On 6/21/20, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> My apology for not keeping the initial question in mind.
>
> However, I wonder if asking an Android phone to serve this function is
> more an academic exercise than a practical one at this point?
>
> I say this because I'm just now in the process of buying my next
> (natively) Linux computer, and it's quite small. It comes pretty close
> to the size of an Android phone. So, I suspect it might be the easier
> path of practicality is the point.
>
> I'm talking about the MeerKat 5 (small) from System76.com (which you can
> get with up to a 10th generation Intel I7, 64Gb RAM, and 2Tb NVME
> drive), all in a box about 4.5 inches by 4.5 inches by 1.5 inches tall.
> The base price is very competitive with a new Android device, imo, with
> far more going for it when portable Linux is the goal.
>
> Which is not to put down academic exercies aimed at hacking Android into
> something usable. I just think the two questions are worth treating
> separately.
>
> Best,
>
> Janina
>
> Linux for blind general discussion writes:
>> I think Amanda is trying to get back to the question I originally posted.
>> That is, she wants to set up a cell phone with a (mostly) FOSS Android
>> variant,
>> in order to have an accessible, extensible, and extremely portable
>> computer
>> that is under her (rather than Google's) control.
>>
>> Although she might use the Android UI for some tasks, the goal is to have
>> a
>> command-line interface and a set of blind-friendly commands that she can
>> enter
>> via Bluetooth, SSH, etc.  Longer term, entering commands by braille or
>> voice
>> might allow her to dispense with a separate keyboard.
>>
>> As my posting indicated, there are several candidates for a base OS, but
>> it's
>> hard to tell which one(s) would be a good fit for this use case.
>> Suggestions?
>>
>> - Rich Morin
>>
>> > On Jun 15, 2020, at 23:59, Linux for blind general discussion
>> > <blinux-list@redhat.com> wrote:
>> >
>> > I don't understand your question. An Android device is a Linux device.
>> > It runs on linux kernels, implements several Linux libraries. Its audio
>> > subsystem is driven by alsa.
>> >
>> > The user doesn't see this, of course, because all of that is under the
>> > hood, so to speak. The user interface on Android is written in Java, so
>> > bears no resemblance to the graphical desktop one might see on a
>> > typical
>> > Linux computer, typically GNOME or KDE.
>> >
>> > So, what are you asking? Please say more.
>>
>>
>> _______________________________________________
>> Blinux-list mailing list
>> Blinux-list@redhat.com
>> https://www.redhat.com/mailman/listinfo/blinux-list
>
> --
>
> Janina Sajka
>
> Linux Foundation Fellow
> Executive Chair, Accessibility Workgroup:	http://a11y.org
>
> The World Wide Web Consortium (W3C), Web Accessibility Initiative (WAI)
> Chair, Accessible Platform Architectures	http://www.w3.org/wai/apa
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list
>
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

