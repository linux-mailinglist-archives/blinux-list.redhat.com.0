Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	by mail.lfdr.de (Postfix) with ESMTP id EB5E2256722
	for <lists+blinux-list@lfdr.de>; Sat, 29 Aug 2020 13:33:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1598700792;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=l/n9GUKVqCDvDJjtUCLaa0OnnzoJJa1ybZ60l8cuI1Y=;
	b=AH8w0ie3Ic+Qci9Ui4tI7+JJBPgMxPwvxXVb2juY7dYuXLOt6RAc02Hj1wlW9ohbL0EUv5
	N78mKWMvbTfGdDR891wjD3b84u1Wat4GjwMHmJEzJlys3uCwDU0szDk7vYN//p59EKlio5
	XLPL5rGVSq3TJGp8nnLYoiqMQ4IdNHU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-422-lr3OHQTLOJKVOeteek06rw-1; Sat, 29 Aug 2020 07:33:10 -0400
X-MC-Unique: lr3OHQTLOJKVOeteek06rw-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 908DD1009636;
	Sat, 29 Aug 2020 11:33:04 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 92BCA2C334;
	Sat, 29 Aug 2020 11:33:02 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id EF507180B655;
	Sat, 29 Aug 2020 11:32:52 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 07TBWgRY005368 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 29 Aug 2020 07:32:42 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 501412018034; Sat, 29 Aug 2020 11:32:42 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4B0A4200AF70
	for <blinux-list@redhat.com>; Sat, 29 Aug 2020 11:32:37 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C915C811E78
	for <blinux-list@redhat.com>; Sat, 29 Aug 2020 11:32:37 +0000 (UTC)
Received: from mail-io1-f41.google.com (mail-io1-f41.google.com
	[209.85.166.41]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-490-go4t_SDLPNCR2jnWnj3vHQ-1; Sat, 29 Aug 2020 07:32:34 -0400
X-MC-Unique: go4t_SDLPNCR2jnWnj3vHQ-1
Received: by mail-io1-f41.google.com with SMTP id u126so1598511iod.12
	for <blinux-list@redhat.com>; Sat, 29 Aug 2020 04:32:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding:content-language;
	bh=HqfO9HsTTUPj5wAx4n+s5NYlPey6rVke3v6ZYIL/YXQ=;
	b=ptPdDZax0EUThZej5n1y7v2IRCWfHkNFbRR4YlGfLzlkBk0fkVtkcSKtc4koolES9f
	b4k64plyLh8gRPYgcps6yvQqfnP6YfyDwQyMEeUdEBV5XZN4aTADHTr/oxVrve5Zt9wS
	n99oOjoNsS8vvMN5whhNIan/VNIFFwWpc/831Z1t65MbWuUItdpGOxi95KnHtSmpJBHs
	IgDjrl/pHoUVG/UB9rLalyEt6vszcBtt8p+z848NWr9C6KoogK3XICzP2QE/PZUNzlRt
	TrDsECj11BkCNIz4H10+TbaGw8w6P52KFn/PPZLSlWPBiuJb/PpZrGtTLWgxRHZCmCFe
	A+rA==
X-Gm-Message-State: AOAM531PEeTKLgeu1qT1nFC31z7HAXFQM4e40Fjvu/zyTYXdtzLCz7rj
	+D24GtbnDyLVz8z88BCd/vtWD0vr9ZU4ig==
X-Google-Smtp-Source: ABdhPJz0mOyENKNBQiCMUnp4rTl+Y3zGaAX+ICFRAB7jeEn4Wma4/0/DJjPTfMYmy+xWkO+OMi8QhQ==
X-Received: by 2002:a05:6638:218a:: with SMTP id
	s10mr4922182jaj.117.1598700753464; 
	Sat, 29 Aug 2020 04:32:33 -0700 (PDT)
Received: from ?IPv6:2601:249:c000:3ca0:b03c:c422:636b:51ba?
	([2601:249:c000:3ca0:b03c:c422:636b:51ba])
	by smtp.gmail.com with ESMTPSA id 3sm1197903ilz.26.2020.08.29.04.32.32
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sat, 29 Aug 2020 04:32:32 -0700 (PDT)
To: blinux-list@redhat.com
Subject: dm 420 as external soundcard
Message-ID: <c43c9c7f-cc5f-8c22-cf2a-856721537d4a@gmail.com>
Date: Sat, 29 Aug 2020 07:32:30 -0400
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
	Thunderbird/78.1.1
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false;
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
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
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0.002
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Content-Transfer-Encoding: base64
Content-Language: en-US

IMKgwqDCoCBIYXMgYW55b25lIHRlc3RlZCBpZiB5b3UgYXJlIGFibGUgdG8gdXNlIHRoZSBkbSA0
MjAgZGlnaXRhbCAKcmVjb3JkZXIgYXMgYSBleHRlcm5hbCBzb3VuZGNhcmQgb24gTGludXg/Cgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlz
dCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL3d3dy5yZWRoYXQu
Y29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

