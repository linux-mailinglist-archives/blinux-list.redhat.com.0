Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id A2CB0461AA9
	for <lists+blinux-list@lfdr.de>; Mon, 29 Nov 2021 16:13:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638198825;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=aXgReHYG6YgpbdsmSeXixd1/opbIeMX9dpQcezcpEzs=;
	b=Nh2dswEg3fudpgOxwzpd9PkNmVGNuf96hNXZc1GV+aRcXCEFx+cHds6YiXzXQ42O1eLdIZ
	DUwOBk5xsxgFao1Fkf78uT22uennLc+HZKnx3Mx81tvH+/CP/tWmGAl13Wk+w470bsjhfx
	YEhoth+9qtOu0EufrKFtbM7Gi5WFeeU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-517-JM3ImZ0APFWSg8OQ7Kas9g-1; Mon, 29 Nov 2021 10:13:41 -0500
X-MC-Unique: JM3ImZ0APFWSg8OQ7Kas9g-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 64E8664A7A;
	Mon, 29 Nov 2021 15:13:37 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 704AA45D76;
	Mon, 29 Nov 2021 15:13:35 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 35E7E4BB7B;
	Mon, 29 Nov 2021 15:13:26 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com
	[10.11.54.8])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1ATFDKgE008984 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 29 Nov 2021 10:13:20 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 976A9C08F26; Mon, 29 Nov 2021 15:13:20 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 92DA0C15E72
	for <blinux-list@redhat.com>; Mon, 29 Nov 2021 15:13:20 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7A05985A5AA
	for <blinux-list@redhat.com>; Mon, 29 Nov 2021 15:13:20 +0000 (UTC)
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com
	[209.85.208.41]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-290-KeNZjpmfOjmMzlQzP6PLEQ-1; Mon, 29 Nov 2021 10:13:16 -0500
X-MC-Unique: KeNZjpmfOjmMzlQzP6PLEQ-1
Received: by mail-ed1-f41.google.com with SMTP id e3so73376281edu.4
	for <blinux-list@redhat.com>; Mon, 29 Nov 2021 07:13:16 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent
	:content-language:to:from:subject:content-transfer-encoding;
	bh=pTA5wqL2stRt+uUtJfbDCAmKwfTdSx54AJyZN0uxFnA=;
	b=lEwQQuzwnTEQUV4Noh7ASoL2e9dI50Gg6Y+w6HLccqxmPoMzqUh6cadAZWUXyeW6Xo
	1dxO/U/e6Bqj11uMR2spw2mbhaMynvkmj2Vky9TPU36voULULAJP3EWtk8YJuTXgQytk
	SHg1iCLfBV53iBfMC3BSimshZPY1j3vagnEAJpx+s2//MK/P6IU2lp3kA4MXgMTf8zJK
	7kVKnTyRWrFF2IO7t3Cge2QCR6mgQB1162sZqdMV3AgA5GOWeAzcBah4WUDAajf5tSnw
	QkStEQCLhTN1f9xMDt+rfx/BeI39dp6zWbJ/2U3mRcSmF15lcWN5iFh91s3+RI3MS3cT
	VKbA==
X-Gm-Message-State: AOAM530EsjaeWC5RdnlwDfm4O1oSErNHddWv6apUv8rG2U3+XM1i7Bjj
	JvIBzVhf/rIqK7xURYDk/Pj86GkUdIMuGw==
X-Google-Smtp-Source: ABdhPJxUriWd1lwIFB2ggOIB6OMW+pcMOUxcqLjDyu0l4gihfN6EAAyFXo1Ci7WARr0KBxWgKP9zIg==
X-Received: by 2002:a17:906:d553:: with SMTP id
	cr19mr60015121ejc.140.1638198795356; 
	Mon, 29 Nov 2021 07:13:15 -0800 (PST)
Received: from [192.168.8.130] ([41.216.201.233])
	by smtp.gmail.com with ESMTPSA id
	w23sm9393072edr.19.2021.11.29.07.13.13 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Mon, 29 Nov 2021 07:13:14 -0800 (PST)
Message-ID: <230ecdb2-c49f-75f1-1501-1989c4257a4b@gmail.com>
Date: Mon, 29 Nov 2021 17:13:11 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.3.0
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: --force-renderer-accessibility not working lately
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Mimecast-Spam-Signature: yes
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.8
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hi all,


I have tried this in both Slint and Fedora, and I've not had any luck 
making the --force-renderer-accessibility flag work with either 
Google-Chrome or Skype, both applications for which this flag use to 
work very well in the past.


Am I missing something, or am I just out of luck here.


Unfortunately, I actually need this to work, otherwise, I'll just have 
to use the MacBook to do my job.

-- 
Warm regards,

Brandt Steenkamp

Sent from the Fedora machine, using Thunderbird

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

