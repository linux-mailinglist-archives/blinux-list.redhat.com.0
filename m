Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 014433EA5D0
	for <lists+blinux-list@lfdr.de>; Thu, 12 Aug 2021 15:43:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1628775787;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Lbd+hBvCNiljUCVFGcri5i8QEsA/e7msDcckCW/xImI=;
	b=b3YgWXn9Vp/NIeVnt5Xy7g7rvXOx4HXEJCBBvKqs+uESfUfBQgp2bHvSH37OYEgX9GN2LS
	sRq87NDftvuP22PPnv6iOlW15c9c7k+32eIj4WeR4f+oge1BkMC6One4cC9T7B+kCXwGgT
	uKAiVXLC453lX0utBY6cLUUALQnitgw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-464-n38Iea0wO6-MKM1xblxTOg-1; Thu, 12 Aug 2021 09:43:05 -0400
X-MC-Unique: n38Iea0wO6-MKM1xblxTOg-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0AA0A8C0080;
	Thu, 12 Aug 2021 13:43:00 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 72BA3188E4;
	Thu, 12 Aug 2021 13:42:58 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 2CA6B181A2A7;
	Thu, 12 Aug 2021 13:42:47 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 17CDgasZ001886 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 12 Aug 2021 09:42:36 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 3658221DE6EB; Thu, 12 Aug 2021 13:42:36 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3155F21DE6F7
	for <blinux-list@redhat.com>; Thu, 12 Aug 2021 13:42:33 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 6A1D2185A7A4
	for <blinux-list@redhat.com>; Thu, 12 Aug 2021 13:42:33 +0000 (UTC)
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com
	[209.85.218.45]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-195-c122M-UVNLORkkbRfld0IA-1; Thu, 12 Aug 2021 09:42:31 -0400
X-MC-Unique: c122M-UVNLORkkbRfld0IA-1
Received: by mail-ej1-f45.google.com with SMTP id gs8so11602233ejc.13
	for <Blinux-list@redhat.com>; Thu, 12 Aug 2021 06:42:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding:content-language;
	bh=66+kku0OAakVqfd9kUN8itmdo2dL/k9BCpAEe/71qRw=;
	b=ZQcHPj3op/+ZUvk9UgtAqVfVe95dFh+9Ly75HnHSiZcAV3cn+RWVOpiHshyLvX7/3K
	pkO3x73TBCH/dcJQT4tyCDrvI903ow2gXaNxWKAs5nTas0CZr8pGHCvLywk/X464zwh5
	WWiIw3BhuemL54ZSOCXkugRIZVp7msxtDkFRFno/VLXIPSgxlvVuzzNkDEIg/0Yu3JMq
	h3y1tH9q6YOrLm7ysTZVP6p4lm0r+0c/VOnlbGxK1mZxkiVTOrgGKMZ1Wp6QOvPxYqIb
	ZJS0sGLMlaEH9ovL0APUd3+wbDVlbLc37A4IsCXS9S+qjPXW7ADXaImEvF8pf1xDZ9rM
	eLfg==
X-Gm-Message-State: AOAM533SCLO8y/muGlSIoRVPF9Jhm0oJ69U+Ih6ISr3BdfiL1DwnRJbJ
	UL14J+M6cpeQFIDtjIOJKcOSoaWDJ5Vucw==
X-Google-Smtp-Source: ABdhPJwovlMVB9ta/541NG0q5Xe60jsokWMBiuB54P+Lvm7LkZ9/kSv4Hlki7S6sbN+eeWCGopLVAQ==
X-Received: by 2002:a17:906:7302:: with SMTP id
	di2mr3635718ejc.409.1628775749650; 
	Thu, 12 Aug 2021 06:42:29 -0700 (PDT)
Received: from darkstar.example.slint ([197.185.106.61])
	by smtp.gmail.com with ESMTPSA id
	mf11sm833696ejb.27.2021.08.12.06.42.27 for <Blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Thu, 12 Aug 2021 06:42:29 -0700 (PDT)
To: Linux for blind general discussion <Blinux-list@redhat.com>
Subject: Installing using a service like "Be My Eyes"
Message-ID: <f350ad42-2eff-9ca8-429d-59c13e839627@gmail.com>
Date: Thu, 12 Aug 2021 15:42:25 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.12.0
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Mimecast-Spam-Signature: yes
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hi all,


I know that Distro-hopping really sucks, but we do it anyway.


I am asking about installing with aid from a service such as be-my-eyes, 
because, as we all know, distros like Manjaro uses the Calamaris 
installer, which, last I checked, is totally inaccessible with Orca, and 
in many cases, Orca is not even included in the live environments.


I would really like to run either Arch, which I always fail to install 
correctly for some or other reason, or an Arch derivative, but, 
Calamaris, enough said.


If anyone knows whether you can install using Calamaris with the 
keyboard only, or if there is any Arch derivatives with an accessible 
installer, I would be really grateful.

-- 
Warm regards,

Brandt Steenkamp

Sent from my steam powered Slint vacuum cleaner

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

