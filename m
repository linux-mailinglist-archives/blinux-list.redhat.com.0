Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id BC5D0400BEB
	for <lists+blinux-list@lfdr.de>; Sat,  4 Sep 2021 17:33:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1630769605;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=3kYLRM5Xokh9GJ5j2nnf3QyHA+nW7HBcAC2h6TWzKYY=;
	b=HUmQyr+ouU40erY3MclhuzbXY+Hw899uxTceNF77sehluZSIceLyrGza/MW+IZTJ0sDtm8
	iztGawfcjq+DZT9NpsVijCuBdK++ntsqIHebZT4Im5jNVLUoukjOJ8DJsj+llDGXn4I5zO
	I+PkkQ7D9BOUQ3clNlXcyW3hKEBBuWs=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-584--GMRRFc2NFau9DcKlLkbYw-1; Sat, 04 Sep 2021 11:33:24 -0400
X-MC-Unique: -GMRRFc2NFau9DcKlLkbYw-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 241081006C91;
	Sat,  4 Sep 2021 15:33:20 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 77E865C1D1;
	Sat,  4 Sep 2021 15:33:18 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id AA8924656A;
	Sat,  4 Sep 2021 15:33:13 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 184FSMN2016981 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 4 Sep 2021 11:28:22 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id A6DE6215CDCE; Sat,  4 Sep 2021 15:28:22 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A14B4216869D
	for <blinux-list@redhat.com>; Sat,  4 Sep 2021 15:28:19 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id DA22388647A
	for <blinux-list@redhat.com>; Sat,  4 Sep 2021 15:28:19 +0000 (UTC)
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com
	[209.85.208.51]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-272-1ZA-_MOaNkq59_kx2PVpxA-1; Sat, 04 Sep 2021 11:28:18 -0400
X-MC-Unique: 1ZA-_MOaNkq59_kx2PVpxA-1
Received: by mail-ed1-f51.google.com with SMTP id eb14so3083793edb.8
	for <blinux-list@redhat.com>; Sat, 04 Sep 2021 08:28:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding:content-language;
	bh=jGWaWsrAyUq9VgpdXxEe6u49+0gz7YZ018r8F+SDCms=;
	b=faD7MkKdv2kETX30zUJWx169YO1BJlELbNpOSXEVo0DS9UOtwQ5xnJe/JGzLV88Dg7
	fCzZxuc4x/OAxxyNTwV7GcHuRrY8h7joaITfiw2t4v+Vi5JnXg/Jes3zSGvv56E4jIcu
	7rAOmj4qTxWHoHHOOhhMyWuLOAKNKSA3rplAFodKH1YBp3dVKsles8E/Jk9qYXlYJBmA
	lnuXjsmKF11TnlUiWpi8y9x3Vsbef2++f1xbTleVm7NVm2sVM8wBubNcY1oz20A8s3Ox
	Z7jrcGDHbjhjXkegastGtU+CfHik9bIC5npCjAVqsJfZTepbClWgr98r8QrQVyKZ4v9I
	p+AA==
X-Gm-Message-State: AOAM533WO356bzBXwkyyhlHGGWATqBkrUzNLqlPCwipL99oTaw6mRc4m
	EySyGuCUvyeDp80gjmnfn25SEC2JS5k=
X-Google-Smtp-Source: ABdhPJwNIYv0dGM5NkNmrPDXiWVyiX920MFJTPymjHEfAYqqyMuRlDXeLcC1fEFivodCTW/xjYR6QQ==
X-Received: by 2002:a50:c88d:: with SMTP id d13mr4782979edh.392.1630769296719; 
	Sat, 04 Sep 2021 08:28:16 -0700 (PDT)
Received: from brandt-slint.localhost (156-155-59-16.ip.internet.co.za.
	[156.155.59.16]) by smtp.gmail.com with ESMTPSA id
	kw10sm1201607ejc.111.2021.09.04.08.28.15 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sat, 04 Sep 2021 08:28:16 -0700 (PDT)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Reading html email using mutt
Message-ID: <a70dce4a-80e4-5d36-477a-8f950aee8f3c@gmail.com>
Date: Sat, 4 Sep 2021 17:28:12 +0200
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hi all,


I set up mutt as instructed, several different sources, and when reading 
mail, I find many, if not most messages full of HTML tags.


Someone told me to pipe the messages from mutt to w3m, but I cannot find 
instructions on how to do this anywhere.


If someone can please, either refer me to a source, or assist me with 
the correct syntax to do this, I would be grateful.

-- 
Warm regards,

Brandt Steenkamp

Sent using Thunderbird from the Slint Laptop

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

