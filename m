Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C1A24BBD66
	for <lists+blinux-list@lfdr.de>; Fri, 18 Feb 2022 17:22:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1645201337;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Kd8MoijuNXvXBqquW1XQjxKBeY1O+SlXUz/oo30zznM=;
	b=HSXfZqol6IY4dP1sAtm64ZfQTaj7iVsBj2xELKqLPW31sG7vRa/joX/eTkbPPE5i+lxYjl
	yElIyDqnuPqL9Slz46+XlX7s1ohTlIvTjYPMYOlEBKJtdjmYD/nTIjyQRwQnuZJnYS6meZ
	/RnC37Zb0iLiXAF1yAtXyU4sJOF+Do0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-352-VIfRMFWUOKWQeu6eifgsOA-1; Fri, 18 Feb 2022 11:22:13 -0500
X-MC-Unique: VIfRMFWUOKWQeu6eifgsOA-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B3A5B1091DA1;
	Fri, 18 Feb 2022 16:22:09 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C4AF5752D8;
	Fri, 18 Feb 2022 16:22:05 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id A7DE14BB7B;
	Fri, 18 Feb 2022 16:22:04 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21IGLACi019607 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 18 Feb 2022 11:21:10 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 1336F40FF414; Fri, 18 Feb 2022 16:21:10 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0F70740FF40D
	for <blinux-list@redhat.com>; Fri, 18 Feb 2022 16:21:10 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E5A63801E8D
	for <blinux-list@redhat.com>; Fri, 18 Feb 2022 16:21:09 +0000 (UTC)
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com
	[209.85.221.50]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-170-TRbfsxXvOXmb0A7FhlkzcA-1; Fri, 18 Feb 2022 11:21:08 -0500
X-MC-Unique: TRbfsxXvOXmb0A7FhlkzcA-1
Received: by mail-wr1-f50.google.com with SMTP id f3so15295190wrh.7
	for <blinux-list@redhat.com>; Fri, 18 Feb 2022 08:21:07 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:from:date:to:subject:in-reply-to:message-id
	:references:mime-version;
	bh=gnFPS7vKGP9G7hfcs9XjajVNBpGsYloNVrKb2dXe4xU=;
	b=t78Ssknw71l9/yXsgRO558ePPyD9g3hQvBVtTKfnhLPyalsjiMJduDVZ33XVKKN67M
	WgC2JcJP/hUGvlyBsTNi2bDh5TcENg274f1w8Rt+aKS6aFExHZ8epXYIJsZPOaRrMoer
	npnT87hisPbdyf2pgjNDDwgQvHfnUQg+ap4hjC+0AsTwGI94l2Qp+fXh//ybOTlqhlP1
	t+Yd5I7uHb0lnhEwEvepr13oM5UTGCaHwF/N6hG9atYUpWIje5tzKk0KGzWr0uWRM0cm
	eD1JJbKy3A+adLKxDmAVapFU0tXhEo+73tsPytTRxG3iCG+zS8FUfsQQVnih4OiUKiwv
	Anqg==
X-Gm-Message-State: AOAM530jBTsnrdKBvpukL2s8LnvKa1UQFEJw/TbKCqckrFJCDl3ZHvmZ
	KRH7fZtghflHpsGbladZFC3bu98QBrNzMw==
X-Google-Smtp-Source: ABdhPJxuHBDYl3rNJnUv3g11q4x2YZ2IFbCU6cALujCOuobWWOc+v0OGHFJdVy/gA55xzTBYPoFHfg==
X-Received: by 2002:adf:e542:0:b0:1e5:b863:e151 with SMTP id
	z2-20020adfe542000000b001e5b863e151mr6550046wrm.226.1645201266680;
	Fri, 18 Feb 2022 08:21:06 -0800 (PST)
Received: from brandt-slint ([197.184.176.211])
	by smtp.gmail.com with ESMTPSA id 1sm19295392wrz.75.2022.02.18.08.21.05
	for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 18 Feb 2022 08:21:06 -0800 (PST)
X-Google-Original-From: Brandt Steenkamp <brandt@brandt-slint.local>
Date: Fri, 18 Feb 2022 18:20:56 +0200 (SAST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Mutt or Alpine
In-Reply-To: <e65d0f59-7906-79ba-14d2-dca16d712667@gmail.com>
Message-ID: <f54d231-df3b-411e-fff6-5d526ac1677c@brandt-slint.local>
References: <e65d0f59-7906-79ba-14d2-dca16d712667@gmail.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

If you want to use an email client with Orca, stick to Thunderbird.

I find Orca unwieldy in the terminal anyway.

If, however, you wish to do so with Speakup or Fenrir, I personally prefer 
Alpine.

Why? Simple. I don't know Mutt at all.

Warm regards,

Brandt Steenkamp

Sent from the Slint console using Alpine

On Fri, 18 Feb 2022, Linux for blind general discussion wrote:

> Date: Fri, 18 Feb 2022 16:00:22 +0000
> From: Linux for blind general discussion <blinux-list@redhat.com>
> To: Linux for blind general discussion <blinux-list@redhat.com>
> Subject: Mutt or Alpine
> 
> So I'm using Mutt, but...
>
> What does Mutt have over Alpine and vice versa, why would I use one over the 
> other?
>
> Mutt seems faster to me, but Alpine seems more user friendly without making 
> temporary files while composing a message (unles I can tell Mutt/Neomutt to 
> delete those automatically
>
> So is there a consensus of which is the easier choice to use with Orca?
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

