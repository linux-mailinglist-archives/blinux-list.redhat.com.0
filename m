Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 679984469C5
	for <lists+blinux-list@lfdr.de>; Fri,  5 Nov 2021 21:33:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1636144416;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=gyKoFbLPuhhv3FbX1QMk8/7p5YE036OunyGgStcGfK0=;
	b=OYxNIm6UGuIqVdr+43TDKKEMzhgaCegOJyNGKCIEyZmer31qqfmmfzwbuXiys5RXGBn+Qy
	Eh8Ry92oJir7augNCZEnWUyHMwyihBNgj+UHiOZzXpEA4JDtXkChTMqz2RQut01IzxjxlZ
	chdwaLCPk6ERrx7/y0dcg0mQkPUDo8c=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-130-jTO25OAjMmaGJZwWQIGpHA-1; Fri, 05 Nov 2021 16:33:34 -0400
X-MC-Unique: jTO25OAjMmaGJZwWQIGpHA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 236971018725;
	Fri,  5 Nov 2021 20:33:28 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0CF6E7092E;
	Fri,  5 Nov 2021 20:33:26 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 750504A702;
	Fri,  5 Nov 2021 20:33:22 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1A5KSWL8021369 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 5 Nov 2021 16:28:32 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id A929840CFD10; Fri,  5 Nov 2021 20:28:32 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A392040CFD05
	for <blinux-list@redhat.com>; Fri,  5 Nov 2021 20:28:32 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 89F14811E7A
	for <blinux-list@redhat.com>; Fri,  5 Nov 2021 20:28:32 +0000 (UTC)
Received: from mail-pj1-f54.google.com (mail-pj1-f54.google.com
	[209.85.216.54]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-307-kLTETbCxN0a1_O8gonDnJQ-1; Fri, 05 Nov 2021 16:28:29 -0400
X-MC-Unique: kLTETbCxN0a1_O8gonDnJQ-1
Received: by mail-pj1-f54.google.com with SMTP id v23so1857526pjr.5
	for <blinux-list@redhat.com>; Fri, 05 Nov 2021 13:28:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=jzRNfyN3XOLaNT1JQs46BpLTFqMaSvybpV4jLXvRf5w=;
	b=S4ZB0YrwLa1gwxJ8vJaVrvhzV11omK1VdVqt+7Q+xxGox/JFjpzvJIvS3vhZUW84cd
	LAB8NHEl7jKW+n0bcU+Og6uDKSg5nq5hjKJcyKEv8s8DgppbnyOZuxTQsF1UH6Mo77V2
	WQ+zXAseA49ymJ8wU+UaygwSkp0f1Dpbq0siFIbni+e751ICqEU2WYtbRBmFtzulfSNG
	e4Jzi7JDCo3ANcDbyChdSjqhB03ho/R64FQYlYpT+WZMvOZ/iyveB6vX5Dl5v7LSsrz4
	PxCGisMjwSo5o8n9ykAGi4nCgYifs6GdHNjAe2hn6dO2BY1m5N2mx+0Tlo/NMiwX/D4c
	mHYg==
X-Gm-Message-State: AOAM532pHaDi3Koi5SKl4mPU8st1lj46vwGvoChEsNK0p9bRn3DtbKiQ
	E+qlEWPTm2dtdNNM2OfK4WY2kXgZbsp7gJYW6vDOxR3gPUo=
X-Google-Smtp-Source: ABdhPJxncblDKYd9Hw6ab8Q9McicJgmlNLaz3TdZPR+9nijLiZ4SHcaWy2aHFlcZypjW4AoPhz+NNZRNBJ6tcvK4//I=
X-Received: by 2002:a17:902:e88f:b0:141:f982:777 with SMTP id
	w15-20020a170902e88f00b00141f9820777mr31528591plg.68.1636144108059;
	Fri, 05 Nov 2021 13:28:28 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:7300:7244:b0:41:f915:42f2 with HTTP; Fri, 5 Nov 2021
	13:28:27 -0700 (PDT)
In-Reply-To: <CAGJxbF6wY1vpn1xQs1YeMNuXt5Gc4+AD4KDmyrNOP0b4mDEcpg@mail.gmail.com>
References: <CAN8Cudg02ZE3tr+k0AfNYg9ZuiAJMGHkdsQKYuBtKMB1j8Y2Kg@mail.gmail.com>
	<CAGJxbF6wY1vpn1xQs1YeMNuXt5Gc4+AD4KDmyrNOP0b4mDEcpg@mail.gmail.com>
Date: Fri, 5 Nov 2021 15:28:27 -0500
Message-ID: <CAN8CudjaRk2jZkoycQmYY4F96spmJq8wFwWwdawR432Ky-TY7Q@mail.gmail.com>
Subject: Re: How to get speech in a console session?
To: blinux-list@redhat.com
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.1
X-loop: blinux-list@redhat.com
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I already have espeak and espeakup installed. I tried running fenrir,
but I got the following error:
play WARN alsa: can't encode 0-bit Unknown or not applicable

On 11/5/21, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> If you start the install media and press s then enter, you'll have speech
> during and after install.
> Devin Prater
> r.d.t.prater@gmail.com
>
>
>
>
> On Fri, Nov 5, 2021 at 12:37 PM Linux for blind general discussion <
> blinux-list@redhat.com> wrote:
>
>> So I'm new to Linux, and I'm going to be trying it out for a period of
>> about a week or two, to see if I could use it as a daily driver.
>> One thing I'm not sure about is how to get Speakup (with either
>> Espeakup or Speechd-Up) working.
>> My distribution of choice is Debian 11, by the way.
>>
>> _______________________________________________
>> Blinux-list mailing list
>> Blinux-list@redhat.com
>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>
>>
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

