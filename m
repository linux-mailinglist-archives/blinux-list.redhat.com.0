Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id 5DD1D273F97
	for <lists+blinux-list@lfdr.de>; Tue, 22 Sep 2020 12:27:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1600770447;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=3wwA0+uHQifLCI8hHNrL4R/0EDYvnOdTGDn0Id4aWN0=;
	b=R5qrMqx3D6CRyH8Z+SJXv7Zqy4vq5vFjmL8heXTaeMGZVzBxwJSyLEdJXo4EAu8kccnhLS
	5eXDK2XV5bBr0CLXkqN951sxVLsWa6qpSgSHYyvoijyTLOeAzwQdbQ2HT7Ut4hLqpayF2u
	zBprAfhZ9QpxsoCDdny2zbIM1TOP4Ss=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-534-CpNDdHLnNuKWQn14NdmW1Q-1; Tue, 22 Sep 2020 06:27:25 -0400
X-MC-Unique: CpNDdHLnNuKWQn14NdmW1Q-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 04B2E801AE3;
	Tue, 22 Sep 2020 10:27:21 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3D4511001281;
	Tue, 22 Sep 2020 10:27:17 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id DBA2B5A0FF;
	Tue, 22 Sep 2020 10:27:15 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 08MAR70W004247 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 22 Sep 2020 06:27:07 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id A5E4EB34FF; Tue, 22 Sep 2020 10:27:07 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A0BFCB3512
	for <blinux-list@redhat.com>; Tue, 22 Sep 2020 10:27:05 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2D763101A540
	for <blinux-list@redhat.com>; Tue, 22 Sep 2020 10:27:05 +0000 (UTC)
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com
	[209.85.128.48]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-299--nyCkecfN6WzQWQoGb1Anw-1; Tue, 22 Sep 2020 06:27:02 -0400
X-MC-Unique: -nyCkecfN6WzQWQoGb1Anw-1
Received: by mail-wm1-f48.google.com with SMTP id a9so2779376wmm.2
	for <blinux-list@redhat.com>; Tue, 22 Sep 2020 03:27:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id
	:disposition-notification-to:date:user-agent:mime-version
	:in-reply-to:content-transfer-encoding;
	bh=mh37oZai16FCPTbccbSTjF9IEEDLC0g4Ffk/j2zXURk=;
	b=Dcwisn8rYSDBTANwIRRF8dXFAKW7hKG2h1EL+4oyPtB1XHPgUy6oG9amznWbRrIas5
	oVpstdVEyG3vfcT+8oH61eCdORa0FlCwonYBQJwdRsSCI+ukngt5EPtHhwlYy6J1FIQt
	9Mubhd6kzaLdHS0Toq/ZSoHQ7cClSUeSzrV2xZ9739D86ERfdInLUaP4Piha8Hva2TNj
	skBnyzlx1t7/Qt9p9HrtSJS1nW98pbEidn7TlA6CD8SMQGkogsrqWD56o/wwKTAhjIcm
	gL3KkSQtNkEiE008ZE1qL8/HX2YVaWNq418d/kFGRMZ13H/gVX1TSHBFcDvQT9C+3kBj
	HLAg==
X-Gm-Message-State: AOAM531lyV0ps0Ch0D7eX0mECIyEVlpN6+DpkTuc3Gy0vKl+m9bqk/m5
	TusM57jPXFIjy5mL3VZTcLkYhbNG7aI=
X-Google-Smtp-Source: ABdhPJw8Y4pRZLXyognRKQRD3vdtuDUi8j+NjhTF+/Qz54XA944EWUAufgiF7Bp8+socwvXA+tTdsA==
X-Received: by 2002:a1c:40c6:: with SMTP id n189mr267869wma.48.1600770421342; 
	Tue, 22 Sep 2020 03:27:01 -0700 (PDT)
Received: from [192.168.178.22] (x4db7119f.dyn.telefonica.de. [77.183.17.159])
	by smtp.gmail.com with ESMTPSA id
	m23sm3665343wmi.19.2020.09.22.03.27.00 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Tue, 22 Sep 2020 03:27:00 -0700 (PDT)
Subject: Reading PDF in Brave Browser
To: blinux-list@redhat.com
References: <addab503-37a4-eb73-3099-29e5dcb713df@gmail.com>
	<20200920073046.1040b490@bigbox.attlocal.net>
	<c722d6c7-89af-bcd4-cb51-4165e977cecd@gmail.com>
	<20200920.133216.759.57@[192.168.1.130]>
	<b9c59cbe-dcbd-f7e4-f030-86fcc435482f@gmail.com>
	<20200920.143000.205.58@[192.168.1.130]>
	<2be0d005-9db4-a3b2-64fc-2e57eeb85c7e@gmail.com>
	<20200920.150321.852.59@[192.168.1.130]>
	<16826b51-1633-7e30-c0b2-84c03e46136b@gmail.com>
Message-ID: <ead08850-b30d-5da8-60b9-5fb9f56aa716@googlemail.com>
Date: Tue, 22 Sep 2020 12:27:00 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Firefox/60.0 SeaMonkey/2.53.3
MIME-Version: 1.0
In-Reply-To: <16826b51-1633-7e30-c0b2-84c03e46136b@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false;
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit

Hi folks,
sometimes there are PDF-Files bringing brave (based on chromium 85.0) to 
crash while navigating through the headings. When I navigate backwards 
it works. What can be the reason for this? I noticed this problem in 
Ubuntu 20.04 and in Mint 20 both with Orca 3.36.2.
Greektings,
Wolfram

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

