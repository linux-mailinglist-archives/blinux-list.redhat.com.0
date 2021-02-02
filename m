Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id F004B30B6D2
	for <lists+blinux-list@lfdr.de>; Tue,  2 Feb 2021 06:20:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1612243228;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=TePO4gZivmMfEeaEqeRyDf13PoiOB9qTXWLRrOwKAxE=;
	b=LRKU0pfsOKMU9QvF6RsEBKBhNREtDxub460/obExQxJGUqxculNnEoSt8G9xPkBrAwszNo
	kUrZiR7SOXC2iJLFpDB/Td+rGvzp6S03vioab8Xq0zdWf9Mp64VPUMg6zRCEBV5xy/3rqb
	rxROLfePwiHcHLewqN42q20NafZAXzI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-258-XxCp8c2GOhKbwdADgrNt3g-1; Tue, 02 Feb 2021 00:20:25 -0500
X-MC-Unique: XxCp8c2GOhKbwdADgrNt3g-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3B798801AC9;
	Tue,  2 Feb 2021 05:20:19 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 41CC35E1B5;
	Tue,  2 Feb 2021 05:20:16 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id CBAFF50038;
	Tue,  2 Feb 2021 05:20:06 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1125JsnF001490 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 2 Feb 2021 00:19:54 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id A51992166B2E; Tue,  2 Feb 2021 05:19:54 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9FDE62166B2A
	for <blinux-list@redhat.com>; Tue,  2 Feb 2021 05:19:52 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4B779802A5B
	for <blinux-list@redhat.com>; Tue,  2 Feb 2021 05:19:52 +0000 (UTC)
Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com
	[209.85.214.179]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-546-TqW22EjxOQGx-V-iBUxMiA-1; Tue, 02 Feb 2021 00:19:49 -0500
X-MC-Unique: TqW22EjxOQGx-V-iBUxMiA-1
Received: by mail-pl1-f179.google.com with SMTP id s15so11802140plr.9
	for <blinux-list@redhat.com>; Mon, 01 Feb 2021 21:19:49 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:subject:to:message-id:date:user-agent
	:mime-version:content-language:content-transfer-encoding;
	bh=X6sGBw6icb6tuPwHHzM91VKgHY8xhX+glYXdCyak54M=;
	b=jSWJqO6HACDeS4kulPqep6Pg2cXTBKzkk8mH1yncqkrqOZ5P5+/eVOz7VPKDsofkMC
	T0X/yqAH3RozhRdDhDw7UiT7DLJVaCUaCKH6kIcvqD6MRTUklYgTLwcTCA+Z9ZvcVZtY
	7dSyC2ky6UbsVmJQQB8cTV5bIyDi+VeEEakBTrkSBT/miF0Zg+NulhDtAFV4oXCG3aMH
	gNMR07w4Eo+3/zJlRSgRBy/ZfthikQiwMah3jPJeSpArmYPlLGbd6gGNW3wxF/R/i5SQ
	HlvdMYuQN6yr3nGnUN7iYjLjegkv1L8j5sKib2rc/lIDXTFITGrg4TjzC8qkVErZ9Jc6
	VdOg==
X-Gm-Message-State: AOAM533TjYjUZeC+hPiAV90hgz/IyOGGsbJNxnQlIZVTzgo7Ny1Xp55P
	r+odMpTVj1Q8GzmoFBmUextvxoj42hrdTBsE
X-Google-Smtp-Source: ABdhPJxI4/LzOEq7tOyZpLW1xOeRP8jOcThGKJ9HpsNmOAS99ogHkiglheDz+TfN6zHDoP4bsmsgCA==
X-Received: by 2002:a17:902:e551:b029:de:8dba:84a3 with SMTP id
	n17-20020a170902e551b02900de8dba84a3mr20960913plf.8.1612243188449;
	Mon, 01 Feb 2021 21:19:48 -0800 (PST)
Received: from [192.168.0.3] (174-18-6-193.tcso.qwest.net. [174.18.6.193])
	by smtp.gmail.com with ESMTPSA id l4sm1214304pju.26.2021.02.01.21.19.47
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Mon, 01 Feb 2021 21:19:47 -0800 (PST)
Subject: latest download of jenux iso?
To: Linux for blind general discussion <blinux-list@redhat.com>
Message-ID: <d93d7848-cda6-0424-436a-526208378bfc@gmail.com>
Date: Mon, 1 Feb 2021 22:19:45 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
	Thunderbird/78.7.0
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
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
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

can I get the url to the latest iso of jenux?

the iso on the homepage gives me a object not found

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

