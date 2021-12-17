Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F4A747976B
	for <lists+blinux-list@lfdr.de>; Sat, 18 Dec 2021 00:11:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1639782666;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=9YUFzdTy12sy2cIN6lrjdkQ1T/G5WDeiljElNE+EiEw=;
	b=Wq3LRs8yiVPk+F45vD3LISQMomp4DJLEf1ADI3TTnEGOJvYwtX8okPn59jWIwl81nXGFQ7
	2QG+HGrQbHCYmPrduL/qkMXyoZTudQt1Zg9g1eGgajiLVxZFLBwnkfrQFnzH6+JXrrRqRR
	uHXxVMWv7es1cqFzyjKEaYDAU3FZxXA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-101-G6lshSEtOQW3-yLjE6kysg-1; Fri, 17 Dec 2021 18:11:02 -0500
X-MC-Unique: G6lshSEtOQW3-yLjE6kysg-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D36158042E0;
	Fri, 17 Dec 2021 23:10:55 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8BE3C1037F4E;
	Fri, 17 Dec 2021 23:10:51 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 58F434BB7C;
	Fri, 17 Dec 2021 23:10:39 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com
	[10.11.54.9])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1BHNAT0U003999 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 17 Dec 2021 18:10:29 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id E8896492D59; Fri, 17 Dec 2021 23:10:28 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast10.extmail.prod.ext.rdu2.redhat.com [10.11.55.26])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E3A29492D58
	for <blinux-list@redhat.com>; Fri, 17 Dec 2021 23:10:28 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id CA5FC1DA8D43
	for <blinux-list@redhat.com>; Fri, 17 Dec 2021 23:10:28 +0000 (UTC)
Received: from mail-qk1-f173.google.com (mail-qk1-f173.google.com
	[209.85.222.173]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-649-5NfmqKH9PH-tVtC_OZoaWA-1; Fri, 17 Dec 2021 18:10:26 -0500
X-MC-Unique: 5NfmqKH9PH-tVtC_OZoaWA-1
Received: by mail-qk1-f173.google.com with SMTP id a11so3671849qkh.13
	for <blinux-list@redhat.com>; Fri, 17 Dec 2021 15:10:26 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding:content-language;
	bh=US6JJ1fAVfqwycWxrzbkaaszWw54ux0eWM4MN6ryYXc=;
	b=QsOwYavPLSJN/61XGM/qCHEolA0oPaloW6vAChw6HwGXRIFbNl9KNG29uC7TqTN9x9
	AZ5yJQSbxEz3eKKkHQNqNLY0v1aJePQH2p0g8SFzcF+LvES9PMl0/4M9BR8LeX2uBrik
	I9BQ3U/RXjPzZFlx2wHHs3pM8RcasDz760hm9LRhmll3rp2bvYm6AxAJF620+no+xCgy
	RKim7jT7HgsNSG3ILApcH0jGCfngHkWmPqLEY8bLOaLSIY+8+vmBW9Quqvus81jy35lT
	Wf7+yoyLI7T4W/wqSY+sJSYEhFtkTJiMw+F2bCjEca07XmTgSm3QfA/SwLusLzvzyuym
	Zmrg==
X-Gm-Message-State: AOAM531hs0lZmrcKFAOhAanKyFtKN+zeGlC77TKHd3QOQ0bewddYD367
	IxILTg1jPzcly/uV3C0CePHvOBE1QPL6nA==
X-Google-Smtp-Source: ABdhPJxfpy1/pmTuJTEjtqTNdW0vNqlDVp3jvwPsr0KXognw3XlcouJTe6faDfKVjQAkCAC4fIUPaw==
X-Received: by 2002:a37:9dd3:: with SMTP id g202mr1205190qke.774.1639782625971;
	Fri, 17 Dec 2021 15:10:25 -0800 (PST)
Received: from darkstar.example.slint ([2601:152:4000:330:6a07:15ff:fe1b:961c])
	by smtp.gmail.com with ESMTPSA id
	i23sm5729221qkl.101.2021.12.17.15.10.24 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Fri, 17 Dec 2021 15:10:25 -0800 (PST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: How can I add Arabic as a recognition language to Lios?
Message-ID: <e9be3d82-77fd-8c95-450b-c763b7f1cdd4@gmail.com>
Date: Fri, 17 Dec 2021 18:10:24 -0500
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
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.9
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hi All,

This question is primarily to Didier:

How can I add Arabic dictionary to Lios so that I can use my scanner to 
scan Arabic text? I assume I will also be able to run Arabic.pdf files 
through Lios and as such I will have access to a lot of Arabic books 
available on the net.

Cheers,

Ibrahim


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

