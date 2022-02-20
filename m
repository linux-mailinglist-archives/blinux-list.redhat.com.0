Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 23D674BD162
	for <lists+blinux-list@lfdr.de>; Sun, 20 Feb 2022 21:22:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1645388572;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=T5YP7w2X29yzUp8PZ83US/vCk3242bdM8xMiLPrH/2c=;
	b=HZtfkAAV0W4XAXunpJLHw5Tl8or7sBVaYvvV2ZuAYx1gnJSQuDzbypLUAgSVZBX6vQ/fZL
	HshWsK7JLG0EVOAQUu9uJ5jJiMqZqKiRsGjx7AmeW3Bt5qr7fsp8iYVlOGNgUby8t4uDGY
	x8GilK+QppxN+SQGkBgFE5STVpGeEbM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-344-jcLx_s8DOPKcsBe3PeEt9Q-1; Sun, 20 Feb 2022 15:22:48 -0500
X-MC-Unique: jcLx_s8DOPKcsBe3PeEt9Q-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1BE84814245;
	Sun, 20 Feb 2022 20:22:43 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 917476107E;
	Sun, 20 Feb 2022 20:22:40 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 091BC1809C88;
	Sun, 20 Feb 2022 20:22:34 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21KKK9Je004515 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 20 Feb 2022 15:20:09 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id B9E351121318; Sun, 20 Feb 2022 20:20:09 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B543C1121314
	for <blinux-list@redhat.com>; Sun, 20 Feb 2022 20:20:06 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C459585A5BC
	for <blinux-list@redhat.com>; Sun, 20 Feb 2022 20:20:06 +0000 (UTC)
Received: from mail-qv1-f45.google.com (mail-qv1-f45.google.com
	[209.85.219.45]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-649-OJLIpFVTP6-PX--53sf2lw-1; Sun, 20 Feb 2022 15:20:03 -0500
X-MC-Unique: OJLIpFVTP6-PX--53sf2lw-1
Received: by mail-qv1-f45.google.com with SMTP id fh9so26837919qvb.1
	for <blinux-list@redhat.com>; Sun, 20 Feb 2022 12:20:03 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:from:to:references:in-reply-to:subject:date
	:message-id:mime-version:content-transfer-encoding:thread-index
	:content-language;
	bh=PmC1yZOjkW0ayGT/Zljm75vNZ7Wb+iTc25GYDhLHUxw=;
	b=Od9c8HVuPnF3G4BUo6T5Thq9BltiCNvSJdEqEtsWRX+sEnFvSsNkBUB59+9SYxskHX
	pc+bwLALFeqYyVzMdgC8z2+31tSNYbguJ9c1NBFpg0/elx1z77zSpun76EmdOgR8nVbZ
	lL8K5h0Eg+OfoBSfnyIy2pzivQZN2qbenltcIgdtM2Z76lyLtW7OTqOp48zgdhdfiLZN
	5dajb3Zg6dnGuzJNUcDwigm5ZF1CySXSAfM/ZY+/quANGy/2EmrJb1f0rwBI2qBBRRDN
	JgIH7SYYEKVGwfZMnW2Iu57h8GbzWRZGixW5jehEqv+Q7R7kW+QbpKFvcQhLP5q99DaO
	IFyA==
X-Gm-Message-State: AOAM530tBa3c6Ei2LRAYKL/l48e7NEtwFcvouh8EBuNCd51DKKdgwQsO
	kDk3ehAxruknB3gda7f0rC5xWR3sB37PoPDX
X-Google-Smtp-Source: ABdhPJwdNBMYtlJzDKJivciOpmyY8jAE2mizVPcy1/h0zbIakJ1U0JbhVRNLpjOWr9nGmyZNCrK5UA==
X-Received: by 2002:a05:622a:591:b0:2c6:c628:7644 with SMTP id
	c17-20020a05622a059100b002c6c6287644mr14997023qtb.265.1645388400433;
	Sun, 20 Feb 2022 12:20:00 -0800 (PST)
Received: from ElBraille
	(2603-6011-ba01-8300-3554-cdde-949b-f41d.res6.spectrum.com.
	[2603:6011:ba01:8300:3554:cdde:949b:f41d])
	by smtp.gmail.com with ESMTPSA id x7sm7363153qto.42.2022.02.20.12.20.00
	for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 20 Feb 2022 12:20:00 -0800 (PST)
To: <blinux-list@redhat.com>
References: <02cb01d82688$ff3af010$fdb0d030$@gmail.com>
	<eef2f03a-228-331a-f492-1be76f39d@panix.com>
In-Reply-To: <eef2f03a-228-331a-f492-1be76f39d@panix.com>
Subject: RE: Any arch users notest that there hasn't been any updates in
	over	a week?
Date: Sun, 20 Feb 2022 15:19:59 -0500
Message-ID: <08f401d82697$3c535100$b4f9f300$@gmail.com>
MIME-Version: 1.0
Thread-Index: AQHiqhxw+HEmdpIBNg+/LaNWOjaGXQHRdvLXrHlNgpA=
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-us
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi,

Possible.  The package updates I have seen were mostly from community and
extra.  Does blackarch have a community or extra repo?  If not then I am
guessing that this is  the same repo that the standdered arch system.
Thanks.

Matthew



-----Original Message-----
From: blinux-list-bounces@redhat.com <blinux-list-bounces@redhat.com> On
Behalf Of Linux for blind general discussion
Sent: Sunday, February 20, 2022 2:01 PM
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Any arch users notest that there hasn't been any updates in
over a week?

Your jenux system includes blackarch, so it's possible you're getting the
blackarch updates.


On Sun, 20 Feb 2022, Linux for blind general discussion wrote:

> Hi all, Is it just me or Is there something going on with the arch repos?
I
> have 3 different arch systems and only one seems to be updating.  2 of
them
> are vanela arch systems in that they were installed using the arch iso.
2
> of them also have packages from the aur in particularly, an aur helper yay
> to be exact.  The third is a jenux system which seems to be getting
package
> updates just fine.  The 2 that were installed from the arch install iso,
> just tell me that there is nothing to do.  It we seem to me that if the
main
> ararch repos are the sme that the package for the must part should find
the
> same packages unless there is something I am missing.  As a matter of
> interest, I have gnome on one system and mate on the other 2.  Any ideas?
>
>
>
> Matthew
>
>
>
>
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


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

