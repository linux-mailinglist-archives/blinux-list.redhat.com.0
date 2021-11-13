Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 4611944F459
	for <lists+blinux-list@lfdr.de>; Sat, 13 Nov 2021 18:34:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1636824895;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=/42vL6ctMV9IJqDxZEKBcjgJc5KpnHUE3nCyPOvWDHs=;
	b=FnbQu1pOdyY/80tBfLld34JWDCtqf1kt9HVAMc+M6e7tBilj7ndyLED2SuAwNrwO3wMPG/
	Qcu7wekxMtkbQ02eF7oZ0wrpE9JZCVnYjffvq9+3ZhpaeP3WY9qZrL7r+LHg6GsQyo442c
	zzCC0d7ddqCv2XfIH7XXYsO05QhPxhQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-258-UBbcVTRqPlWXal11dvRufQ-1; Sat, 13 Nov 2021 12:34:50 -0500
X-MC-Unique: UBbcVTRqPlWXal11dvRufQ-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 03CB4102CB77;
	Sat, 13 Nov 2021 17:34:45 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7603B5D740;
	Sat, 13 Nov 2021 17:34:42 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id BB57A4E58E;
	Sat, 13 Nov 2021 17:34:37 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1ADHVCGC006160 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 13 Nov 2021 12:31:12 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id A4F2E404727E; Sat, 13 Nov 2021 17:31:12 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A14444047281
	for <blinux-list@redhat.com>; Sat, 13 Nov 2021 17:31:12 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 52600811E76
	for <blinux-list@redhat.com>; Sat, 13 Nov 2021 17:31:12 +0000 (UTC)
Received: from mail-qv1-f46.google.com (mail-qv1-f46.google.com
	[209.85.219.46]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-482-1GBdhw2gM5upjHcpJz7_HA-1; Sat, 13 Nov 2021 12:31:10 -0500
X-MC-Unique: 1GBdhw2gM5upjHcpJz7_HA-1
Received: by mail-qv1-f46.google.com with SMTP id bu11so8482615qvb.0
	for <blinux-list@redhat.com>; Sat, 13 Nov 2021 09:31:10 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding:content-language;
	bh=oN2vaUFl7j+es01UFGV58inVdHZk/0fZUjzotIy/CDg=;
	b=J97CS82/uyLONMqhnq9js5O7tfardxMpUTpgDJDhoCbShcwwE/d/kRyzR18D7wJRTA
	UaFHztCtaYaY1LOPIT9SRpZMd2vwQJCQ/CGvbKnN4J1H6AU3mcV8p9Jyli33HJ2Iq8vz
	MLIWAp8MrMk0kJy0ymylI1Gwvf2W6VXo1dv3xDWFJ3s62nmQKXVJUxwfSPuHQklbW3C3
	aibWA14S9paAi/SMWifASa9sT1BYPlAkIMejrqL41Ci/67n5z9rLM/Y8BzhpX4CbZPGb
	xPlKoVtqoFhhV5/USbLo7U5nYZM/8JdVHqv08MAxFXfrU9XgG5iVatuxWvcQGqB56790
	4VrA==
X-Gm-Message-State: AOAM531HsYTZuwnk4Kh5VWf4LFNz7S67orCldkNrLhuP5YQkhuKnHfAe
	3s0o0Q/ppeFi3P5WvJ75ljlCLgsY1kH2/g==
X-Google-Smtp-Source: ABdhPJxZxU+wq0B/l3uGEixQ/4GwteR1j5OY7UH5cW5BLVT6cAVDLj/SGTSUrxm/iwcnUMhuN+oW3w==
X-Received: by 2002:ad4:5aa1:: with SMTP id u1mr23920663qvg.44.1636824669897; 
	Sat, 13 Nov 2021 09:31:09 -0800 (PST)
Received: from darkstar.example.slint ([2601:152:4000:330::11])
	by smtp.gmail.com with ESMTPSA id
	x21sm4225875qkf.77.2021.11.13.09.31.09 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sat, 13 Nov 2021 09:31:09 -0800 (PST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: any other accessible email client for linux?
Message-ID: <b92effa3-e60f-02aa-a7b8-3102adfe2e4a@gmail.com>
Date: Sat, 13 Nov 2021 12:31:08 -0500
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hello friends,

I am wondering if there is another accessible email client that works 
seamlessly with linux? Currently I am using thunderbird. It is very 
accessible with linux. However, the fact that it brings so many firefox 
tabs which are not directly email related is annoying. I want an email 
client that is simple and purely email, no other features. Do you guys 
recommend a particularly simple yet accessible client?

Cheers,

Ibrahim

,

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

