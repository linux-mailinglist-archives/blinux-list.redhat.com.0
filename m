Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 47EC74637F7
	for <lists+blinux-list@lfdr.de>; Tue, 30 Nov 2021 15:54:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638284081;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=JDpNeV3k6irfNWcCZupq2o/E8GFuL+UE9Zg5xbWs6xY=;
	b=WPpFkX46G1grYY28n3B5aUBd12z/gmX4RLO1uF3SLTOpirbSMTuVQoDwxLvIMQ7unbEuI5
	iSYrJzNFcb5j+oTdqxw8BFiIUKGceMEshlqcgovavQtm5RnHufXgX9SXwNr5jzG7tLEooq
	vTqlt3V4xEhkJKOlJFylFfaz5jM/RmI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-145-F2yPJ6wWPOmuoH8esJjexg-1; Tue, 30 Nov 2021 09:54:37 -0500
X-MC-Unique: F2yPJ6wWPOmuoH8esJjexg-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id CC9D5835E22;
	Tue, 30 Nov 2021 14:54:32 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 89D5719724;
	Tue, 30 Nov 2021 14:54:32 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id A960F1809C89;
	Tue, 30 Nov 2021 14:54:30 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com
	[10.11.54.7])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AUEsRXO026639 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 30 Nov 2021 09:54:27 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id A6D4A1402406; Tue, 30 Nov 2021 14:54:27 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A22121402400
	for <blinux-list@redhat.com>; Tue, 30 Nov 2021 14:54:27 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 87FFB80A0B4
	for <blinux-list@redhat.com>; Tue, 30 Nov 2021 14:54:27 +0000 (UTC)
Received: from mail-yb1-f171.google.com (mail-yb1-f171.google.com
	[209.85.219.171]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-406-vrcWMQ6tMRGstLv9vtqxzA-1; Tue, 30 Nov 2021 09:54:25 -0500
X-MC-Unique: vrcWMQ6tMRGstLv9vtqxzA-1
Received: by mail-yb1-f171.google.com with SMTP id x32so53351677ybi.12
	for <blinux-list@redhat.com>; Tue, 30 Nov 2021 06:54:25 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=RioF+vYaLNQA/OCZ5YT733R04HiNMlAQKv5hjiZbJrI=;
	b=xGBbcHqmk3TZBcDT2/ZE6fbBvRx/ulgrawwU6VnkEDO4EL0dxsKuoXHD84Hf+SgIGp
	/P7Mz5IvkMaTug6uJhDMFOxWoCrOL2JMXtM40U2EPY1fLyzBecBDNIJpyLdrdCkiutum
	J5wwlXAzDq511vwR4EZtAANm8GUUGeZ46pPfX2TjpShYjGJJP8M3vJ403sL0HpEasm/l
	o0kotBxaQriYK2a3ABAb3dYDeA1dcupuWOCrAT5UNPvN2mDz94tliYNfRtNS6VN72U3p
	mwytZcKPLsACLXwzGl3EdMqqwmFwbLrRmuv77m7EYvRopcRsTHFyHtzF9HoqJwnaAVxs
	LXUw==
X-Gm-Message-State: AOAM5328L32DYlLWVqezlt8fagyMxN+btvUv//lDjdwrUWuu2CgGjXpg
	tR9VuOxM+AagF7J+D5Vxas/XSeRWG7ErTy4nyiqrSBe5t/k=
X-Google-Smtp-Source: ABdhPJzeAT1pX/Dt2WxkwYTeKQ3LmiliAyNztQJSMaP9eHupOQghXr7gxSR8IAxk9r9OaTVzKnmgOj0Fs8yystcOOrU=
X-Received: by 2002:a25:7313:: with SMTP id o19mr13378620ybc.590.1638284064571;
	Tue, 30 Nov 2021 06:54:24 -0800 (PST)
MIME-Version: 1.0
References: <a3ea6f04-d8a4-2ef4-35cc-8e91d7582ab8@gmail.com>
	<dcf188c1-db80-bf0a-e54b-474f2fddbf55@gmail.com>
	<CAO2sX30oEaotc3CObf62R5Dg_0qLiu_qB3V3JF4EUQfACdkG+A@mail.gmail.com>
	<alpine.NEB.2.23.451.2111291731190.11659@panix1.panix.com>
	<878bd3e0-d05c-4132-52b4-d29893818041@gmail.com>
	<7d174815-a616-2abd-72e9-014ac8bf2b8b@slint.fr>
	<87bl22kqlz.fsf@brainpower.wer>
	<CAO2sX32s07jDN=1KiJCQ-31_gh5RAFFXBibGwKrLd4zuDpESKQ@mail.gmail.com>
In-Reply-To: <CAO2sX32s07jDN=1KiJCQ-31_gh5RAFFXBibGwKrLd4zuDpESKQ@mail.gmail.com>
Date: Tue, 30 Nov 2021 08:54:12 -0600
Message-ID: <CAGJxbF72Pg+0GGry8rMi8Dsmf4ct5FkZwF52p29dBZQpUVSF5Q@mail.gmail.com>
Subject: Re: What is the easiest and most accessible editor?
To: Linux for blind general discussion <blinux-list@redhat.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.7
X-loop: blinux-list@redhat.com
X-Content-Filtered-By: Mailman/MimeDel 2.1.12
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://listman.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

To me, Emacs is worth it /because/ of Emacspeak. Hearing syntax
highlighting, or font-lock, is just, like, I think if I were sighted I
would be a visual learner, so hearing more than just a dull, gray voice all
the time really helps me focus, concentrate, and understand information
better. That may not make much sense but we all have our different
priorities. The fact that Emacs can be a book reader, email client,
organizer, calculator, calendar, and everything else, just adds onto the
sweetness of Emacspeak.
Devin Prater
r.d.t.prater@gmail.com




On Tue, Nov 30, 2021 at 8:28 AM Linux for blind general discussion <
blinux-list@redhat.com> wrote:

> I tend to find the editor wars, as well as the browser wars, console
> wars, various fandom wars, etc. to be rather silly, but I'll say this
> much:
>
> I prefer tools I can jump right into with minimal foreknowledge and be
> able to do the basics within minutes, learning how to use more
> advanced features as needed, and if I need to do more than read
> through the output of -h or --help to get started, I'm most likely
> going to start searching for an alternative tool for what I'm trying
> to do.
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>
>
_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

