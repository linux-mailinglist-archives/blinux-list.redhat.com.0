Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 19DC544AE4C
	for <lists+blinux-list@lfdr.de>; Tue,  9 Nov 2021 13:58:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1636462722;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=i5Scim9/k7+m8EVNz1mhf6n0dtK1fUHU4zTdDCwJyuU=;
	b=NHivc/NxSzrbgd8g7bi55e8w5Y6vkhkGeH9OvAr7C7m+ez8aHuCboNymWwd+q46LbQoI5w
	k8L4mN1Z4gNS7DpjnuyB8+BHXQNOJiI161C61Rzd1IEaCeulFh7Jc0ucMCQPoP8DB4rhwn
	17qsO+xsihYhWGDIdux3ZeY9xtP7Iuo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-556-ocjBL7x2N8yq1aW1tJh5iA-1; Tue, 09 Nov 2021 07:58:38 -0500
X-MC-Unique: ocjBL7x2N8yq1aW1tJh5iA-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 297B8824F99;
	Tue,  9 Nov 2021 12:58:33 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 723BE5DEFA;
	Tue,  9 Nov 2021 12:58:31 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 3D6E31800FE4;
	Tue,  9 Nov 2021 12:58:24 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1A9CwF5C003658 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 9 Nov 2021 07:58:15 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 405762166B25; Tue,  9 Nov 2021 12:58:15 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 38A142166B3F
	for <blinux-list@redhat.com>; Tue,  9 Nov 2021 12:58:12 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 1555D805BFC
	for <blinux-list@redhat.com>; Tue,  9 Nov 2021 12:58:12 +0000 (UTC)
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com
	[209.85.221.47]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-188-odxKpDfQN1205y9pcmKxbw-1; Tue, 09 Nov 2021 07:58:08 -0500
X-MC-Unique: odxKpDfQN1205y9pcmKxbw-1
Received: by mail-wr1-f47.google.com with SMTP id d5so32852427wrc.1
	for <blinux-list@redhat.com>; Tue, 09 Nov 2021 04:58:08 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:subject:to:references:from:message-id
	:disposition-notification-to:date:user-agent:mime-version
	:in-reply-to:content-transfer-encoding;
	bh=W3LCUIuQ614YgxTzSl4WXaNf16FFzdQvSdl2hosepYc=;
	b=2OI8ly3R7KIAHgkp3Z2mhgx2He3Ox0RDIVAfNF2xsoko6yFXSAE2+YELD54KE24fb4
	hlypwlzO/FxqJpSfb13nx4kvjyiDM/t3jtM8D/lJ4pWnTS5KdwHNHjGgReMuZSBQhkyi
	+2B645v2lLLvJw/hKt1ra9q1dNl5THDA2M7BJm0aMqnLWDqdMrag+z7KovJzO78EvkAK
	Wdd5RtE/EKtwipiZS35uOkyF6/GhWuykBxRVWMB/+i4V6CqhEPvJKwmwa4vBfH3ZRZ7a
	Hed9CxTkxkH8f4mMVcI+uOXNV4aPl0ZYs/t+1fyYl5Gm6G1rUFvIL86UToenQB7bJ1x9
	D5Mg==
X-Gm-Message-State: AOAM533xLuF/nrAS+myJLSqZVCdoHfZRQkVrzhA/Nu6E1Za+HjcLggVP
	PiLwk7BQkjCitDSiYA6k1448yNrNUfc=
X-Google-Smtp-Source: ABdhPJwVSz30XqflZhP4blYe7yg+T/Q3thxmMBntiHNvm6T/vNRnlzv/tnBfv9IH1GX7NQ+5VD8Qlw==
X-Received: by 2002:a05:6000:156a:: with SMTP id
	10mr9172895wrz.87.1636462687687; 
	Tue, 09 Nov 2021 04:58:07 -0800 (PST)
Received: from [192.168.178.28]
	(dynamic-089-012-040-221.89.12.pool.telefonica.de. [89.12.40.221])
	by smtp.gmail.com with ESMTPSA id 21sm2391375wmj.18.2021.11.09.04.58.06
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Tue, 09 Nov 2021 04:58:07 -0800 (PST)
Subject: Re: Does any of you use a Whatsapp Linux client?
To: blinux-list@redhat.com
References: <58ade39f-710c-bd82-f316-04decb37569e@gmail.com>
Message-ID: <a6ad1028-c42f-bcd8-c2fa-be8683df6217@googlemail.com>
Date: Tue, 9 Nov 2021 13:58:06 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Firefox/60.0 SeaMonkey/2.53.9.1
MIME-Version: 1.0
In-Reply-To: <58ade39f-710c-bd82-f316-04decb37569e@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
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

Hi
I use an Android VM in Qemu-kvm and virt-manager.
Greetings,
Wolfram

Am 08.11.21 um 19:35 schrieb Linux for blind general discussion:
> Hello folks,
>
> I am wondering if any of you use an accessible Linux client for 
> Whatsapp. What is the best way of using Whatsapp on Linux if no 
> accessible client is available?
>
> Any ideas?
>
> Cheers,
>
> Ibrahim
>
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

