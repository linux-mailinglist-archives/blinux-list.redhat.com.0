Return-Path: <blinux-list+bncBDYPVTOXSQEBBDUPV64QMGQECA5KGKA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-oa1-f70.google.com (mail-oa1-f70.google.com [209.85.160.70])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BC3B9BF75D
	for <lists+blinux-list@lfdr.de>; Wed,  6 Nov 2024 20:46:26 +0100 (CET)
Received: by mail-oa1-f70.google.com with SMTP id 586e51a60fabf-2885c5af51csf358430fac.3
        for <lists+blinux-list@lfdr.de>; Wed, 06 Nov 2024 11:46:26 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1730922385; cv=pass;
        d=google.com; s=arc-20240605;
        b=koGvbT2R8Y7ETER2n9IRF5mZSpnQZ0JaCRVQPZeJINTeOnFWEtPMoH2lPAtZmnxFRX
         UWmNs2NFTk7DFy+Kek8MCAEGo/kX1pl1hp1aEG2YCZMnmcRodVUzGvl4iCu5CfhXJc4R
         vN6rs6TSL59Xsioh0ZMAqqU+heZ678KhZ/YDYz2JSsbwYphznglOL07/YfRBdIGpd7nx
         GcAKOyBrGSZKHafI3nP3GPcRFxRqRv3x/gNIXx0e5DOotJGUx1oEJ45yKXH107TnWRac
         fmfgqhMfKhTlCtH5Ah+QnqZviHH1D7+f3gbPDSveeGx3QzPHU5H6FLaNpeE6UlggD42X
         eb3Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:to:from:date:delivered-to;
        bh=5wvJVMHh2O7OyWH60t5An1ttnsFTTdumkJ9BS0cUp4M=;
        fh=1ICyu+BJDrp0nFydGhgzFmyasFkZbcBaPBzCz1bT9xo=;
        b=D71r/TCIIZMKWBvklnDa+GlYqxmMJWZnhsuyqC2vDmQJSQQgh1kVF/xq6NSDIMmCun
         5QKxTbSQXa2N6b+tSevzXZTruCwrj+VINk/SVLA1CYC7dtxIOPp3xEw/xqpEnb/7pLVv
         KPNHt18oe/fTdZJ4VqqVUdn/8rQG16LacLOYjgB6IWtjGdLX+4U+TGomcyC/6MraS2GL
         PtujuwmVyN17OAOiGnkSLHBUwCczyKhEhEPssMc2FxiSD3d0XyIs/WgOwOghSpTs1itk
         SeMNvodh9uBogZUxHX8PPJZMHwSyakvNiy/L38dX3pkJ8f4WNnJgEYh0/jwCLMMboBq+
         egTQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730922385; x=1731527185;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:to:from:date:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5wvJVMHh2O7OyWH60t5An1ttnsFTTdumkJ9BS0cUp4M=;
        b=Z5Xsi7Wf0rAgiMwe4R7g0EyN3kNI/QM+qxndKJVCEexyUlpn1oaAMNpzIasvWuFMgu
         RAK3mBw7sB8QXYjKsB71YSlr5kyR10oJtglQF9IMOoxABKF/nOjh66vofyRu0zr9y/BR
         ZyzGFmewBs5Ml9hwcEhkrhMf8HwtvZDSi9W694fwlr9Ah9DL7ThVu72sW5BN3alK8/Xz
         hYkQhGBAh7Fw4u9fMqeyZtAqEjwD6KgihhmWzcvShjoCFlcBEUtqQa2Rmgb3lYlgX1bk
         rDtWt4oIY3C9B25aklguiv8woLY1Tq2e3mhEtVA2HiZdsU6cStbdw0HszSSIJ+24SBTt
         K1Iw==
X-Forwarded-Encrypted: i=2; AJvYcCWDesO/Siyrzo73JmFnHZwOo4+tjh4KDvSEyRuarUac+7YaS9Fitoio0yNbT07gAe1ey8fGcA==@lfdr.de
X-Gm-Message-State: AOJu0YyWgkJ4OmjBNfkVtN3j8+CTweGUohW3KmROouiS9QtsIqiI6YDp
	SmTRwVxWpO/5zDKENBP7rO3o1Qt6Qyta/ssC6aX9/hZF/2gtxmSTTUaYM0a6eGY=
X-Google-Smtp-Source: AGHT+IEHh95QP6puHuC95sjYknkDbORFgJELcBMw8nR0oMJCwj4EeP7DUT2Zxph9bazBLZJz/up3LQ==
X-Received: by 2002:a05:6870:9728:b0:250:70bb:1a97 with SMTP id 586e51a60fabf-2949edfeecdmr19524798fac.24.1730922382998;
        Wed, 06 Nov 2024 11:46:22 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6871:709:b0:277:f19a:1140 with SMTP id
 586e51a60fabf-29540fdcf6als233219fac.1.-pod-prod-05-us; Wed, 06 Nov 2024
 11:46:22 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCUUMdujxnzqizbdmufvwQTAHMDFVTQUE3y0jVG6dwXmk/Cb41kBlmPsWpjZfhLQ4lhjw3IETLXNRaYvgA==@gapps.redhat.com
X-Received: by 2002:a05:6358:4b09:b0:1bc:7c1c:9fc2 with SMTP id e5c5f4694b2df-1c5f98d4075mr1061232055d.6.1730922382227;
        Wed, 06 Nov 2024 11:46:22 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1730922382; cv=none;
        d=google.com; s=arc-20240605;
        b=fDiJ6RrhlvYe0pfnD5tyYBUyNRvxPlzamOCvWEQDqTelYvkg8JccZ3kRLp7S2kccoK
         y9lkRcU045udn4CdQcLYecQ0MtHJwGRILEsJHTorrEKIyL7tP/AgGRunh4HGKNs2/Ys8
         tmUkx/d+POOt2fmWKOToKtMBAJCTu6Tko7sQPf9YUe5is+dmpWRM1DdqkfGPd0sni4di
         Fs85S/pKBpsuF++nMc820122QyeEIpJCIJle3hBCwePA4k909pznbzhp1gcC4tftfxlK
         0S0vBkmRZf1ZXVbCQ2hYM5jtlSZBNO6jZL3B6eU4lmYY+r8lWoCPDGQPDGG9NWo5sbfu
         U7Kw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=mime-version:references:message-id:in-reply-to:subject:to:from:date
         :delivered-to;
        bh=mZ4znsX03NRS390ssPkWBZqXp8s1zVOpp5/vv0fnfl4=;
        fh=Ppud5brXcO7Ii9GUjWP5Bn7eOaZbOlsG2+9D/2yFPDM=;
        b=Ha5bmPEdUIrrCnaOPf/5zKk7DVf4GDtEIeJuK+wYQq0j8qOCoqixc0QjGX9Js5BYtA
         qICN1WwCljwiPnsbnhO7f2Bj/RN9pU0ULUHIE/n64Hc75ZUkjr5DFVJ1W+zZtW3MhnCf
         BPNE2h+z3dxjgAZJrqCbYQIAjwyogrL32wgIgPh+1L4UR1TFia0SBFADNMvEco2oNjVA
         HzqVojktC4/n8/bivsLRr1F67sU9f0lgV2UmCeVQmd5TTfCGZ8vWrQP1n8ZFJnGiKZ5q
         0Bt3WcjJZRxpQpILZQGw/7bh3ZB2pztIsHaiYg/cAjohyubRHccyd9l9QInrtdup1HZ4
         WfHA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id d75a77b69052e-462ad276c23si178210401cf.691.2024.11.06.11.46.22
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Nov 2024 11:46:22 -0800 (PST)
Received-SPF: pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) client-ip=166.84.1.89;
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-687-WVC6dgH-Ouu7nkaMbmtYrg-1; Wed,
 06 Nov 2024 14:46:21 -0500
X-MC-Unique: WVC6dgH-Ouu7nkaMbmtYrg-1
X-Mimecast-MFC-AGG-ID: WVC6dgH-Ouu7nkaMbmtYrg
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.12])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 4A6E119560B8
	for <blinux-list@gapps.redhat.com>; Wed,  6 Nov 2024 19:46:20 +0000 (UTC)
Received: by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 4660F19541A6; Wed,  6 Nov 2024 19:46:20 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.33])
	by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 43F6819541A5
	for <blinux-list@redhat.com>; Wed,  6 Nov 2024 19:46:20 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id A5C6419560A6
	for <blinux-list@redhat.com>; Wed,  6 Nov 2024 19:46:19 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-418-UHtUQhMGOc6hF4J-3tnNlA-1; Wed,
 06 Nov 2024 14:46:16 -0500
X-MC-Unique: UHtUQhMGOc6hF4J-3tnNlA-1
X-Mimecast-MFC-AGG-ID: UHtUQhMGOc6hF4J-3tnNlA
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4XkG0m0lk1z4TFs;
	Wed,  6 Nov 2024 14:46:16 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4XkG0l728Vzcbc; Wed,  6 Nov 2024 14:46:15 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4XkG0l6yyLzcbC;
	Wed,  6 Nov 2024 14:46:15 -0500 (EST)
Date: Wed, 6 Nov 2024 14:46:15 -0500
From: Jude DaShiell <jdashiel@panix.com>
To: mattias jonsson <mjonsson1986@gmail.com>, blinux-list@redhat.com
Subject: Re: chromebook and tdsr
In-Reply-To: <193021c8db0.275e.afbff0009b353412c733e12e23e6ae2b@gmail.com>
Message-ID: <2917658c-8580-a7e6-c973-4320ce6a5129@panix.com>
References: <fd0ee2da-860d-5025-92c8-9f347530982b@panix.com> <193021c8db0.275e.afbff0009b353412c733e12e23e6ae2b@gmail.com>
MIME-Version: 1.0
X-Mimecast-MFC-PROC-ID: oO9tiNFwvU99DrSVCMDHSllT4QQTzSfbsXDalNGh47U_1730922376
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: he0hQpj4pwoEUwVfflsHFBr_wC_gWU36jyhd2z9EXpk_1730922380
X-Mimecast-Originator: panix.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jdashiel@panix.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
Precedence: list
Mailing-list: list blinux-list@redhat.com; contact blinux-list+owners@redhat.com
List-ID: <blinux-list.redhat.com>
X-Spam-Checked-In-Group: blinux-list@redhat.com
X-Google-Group-Id: 304886998071
List-Post: <https://groups.google.com/a/redhat.com/group/blinux-list/post>, <mailto:blinux-list@redhat.com>
List-Help: <https://support.google.com/a/redhat.com/bin/topic.py?topic=25838>, <mailto:blinux-list+help@redhat.com>
List-Archive: <https://groups.google.com/a/redhat.com/group/blinux-list/>
List-Unsubscribe: <mailto:googlegroups-manage+304886998071+unsubscribe@googlegroups.com>,
 <https://groups.google.com/a/redhat.com/group/blinux-list/subscribe>

I never set the alt key to replace the search key.  The search key is
where the capslock would normally be and inside tdsr I don't need or use
the search key.  The alt key has specific functions when used with letter
combinations inside tdsr.


--
 Jude <jdashiel at panix dot com>
 "There are four boxes to be used in defense of liberty:
 soap, ballot, jury, and ammo.
 Please use in that order."
 Ed Howdershelt 1940.

On Wed, 6 Nov 2024, mattias jonsson wrote:

> jude
> how do you use the meta key for tdsr
> you cant set the alt key as meta key?
>
>
> Den 27 oktober 2024 18:50:32 skrev Jude DaShiell <jdashiel@panix.com>:
>
> > I'm using the package in the debian container environment with 96gb of
> > space so it has enough room to swing a cat. tdsr for whatever reason needs
> > to be started once the penguin shell is opened with chromevox turned off.
> > For whatever reason so far the command to start tdsr cannot be appended to
> > .bashrc without generating trace back errors.  My guess is the command
> > just before the command to invoke tdsr needs a couple ampersands attached
> > to its end so tdsr will only start after that command has run to its end.
> > I've tried it other ways and had to power wash the chromebook to clear my
> > mistakes.  If I can get the sound card to play a tone at the end of
> > .bashrc execution that would be helpful too.  The shell comes up slowly
> > even with chromevox disabled. I'm using an acer spin #713 I bought a few
> > years ago since my main linux tower died and went to the recycler until I
> > can go and buy a replacement for it.
> >
> > --
> >  Jude <jdashiel at panix dot com>
> >  "There are four boxes to be used in defense of liberty:
> >  soap, ballot, jury, and ammo.
> >  Please use in that order."
> >  Ed Howdershelt 1940.
> >
> > To unsubscribe from this group and stop receiving emails from it, send an
> > email to blinux-list+unsubscribe@redhat.com.
> >
>

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

