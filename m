Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id C05552E7DFA
	for <lists+blinux-list@lfdr.de>; Thu, 31 Dec 2020 05:39:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1609389589;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=vF+WOQEeP10ydjTZgSQ15NFdBLKAMkXgP9gv2ssQ04Q=;
	b=g5IAROCpM2nUYY5n5JPET7BKVVRmmGRnrhLV+vkSK52HD1VOYGY6rfA7RMKecWiPp4JoLU
	lj2MfoZ8RrW0mNTSY3eC6qiQplLJTIK+zDnGa3uRg9GxM3so0nn+TiIZzB+V0PY8OrGoKH
	njFuG1eq929v879kfCLVG+M98izeHI0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-578-zotHXUFJO0ir8TBsDtOm_w-1; Wed, 30 Dec 2020 23:39:47 -0500
X-MC-Unique: zotHXUFJO0ir8TBsDtOm_w-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 086C2801A9E;
	Thu, 31 Dec 2020 04:39:40 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C749F5D9CD;
	Thu, 31 Dec 2020 04:39:35 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id A50D918095C9;
	Thu, 31 Dec 2020 04:39:23 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 0BV4dD8j024540 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 30 Dec 2020 23:39:13 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 828DE2026D76; Thu, 31 Dec 2020 04:39:13 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7DB7E2026D49
	for <blinux-list@redhat.com>; Thu, 31 Dec 2020 04:39:11 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id EC992101A53F
	for <blinux-list@redhat.com>; Thu, 31 Dec 2020 04:39:10 +0000 (UTC)
Received: from mail-pj1-f49.google.com (mail-pj1-f49.google.com
	[209.85.216.49]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-18-Nfm4aAK-PNKNFmsNLqNJ6A-1; Wed, 30 Dec 2020 23:39:08 -0500
X-MC-Unique: Nfm4aAK-PNKNFmsNLqNJ6A-1
Received: by mail-pj1-f49.google.com with SMTP id f14so4395926pju.4
	for <blinux-list@redhat.com>; Wed, 30 Dec 2020 20:39:08 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding:content-language;
	bh=rDwDKJe7vXYOQHXuJK9Ewh0XPAAAk9LyJs2UGo5Kwtk=;
	b=Tvfz3KV4VLfsGDAh12iGoo2pajzKswc9S6xzPQKX2G5SRSfb7NrFlIt4kAEibfkY/o
	b2BJqWy1KQjIgLQCv9j9FEk4VpnKPTkQVxvjJm7oW9ULdgdNSb5tXC9xvofEqOCnffrv
	bMV4Uo3NRPN5HMqZP9ZcSTUJmKX/mrekNj+s0kxlpyWF0kvugxeK/7QJ4biZ+T8gRVMa
	ttNSD0UEIP1Zgsx4JahjXUnyhzj+kgRLURAQIBtvIkoO3pnZtmr5OEPn/cILikZxFEny
	DKivTTdSRMYCwscf1bX9beObnZNChAqvTQtTBpPuEgYiFN5Oq9fD09K9OCae5aUFEYp+
	24yg==
X-Gm-Message-State: AOAM532abEJ5zWvcxhshHx2aawhMIoVFcLa3wZB9zhB960LgTyuJQvpT
	loLayMsTihnmu/x75YhLcO14zSmPH0/4eA==
X-Google-Smtp-Source: ABdhPJxl6MQs1WtVpVuS9FOf+cRNGGqsNnP3fpcmoEj4r23MaEQOMbUcI9Be0x0Yzk5jwDaGgNK5zg==
X-Received: by 2002:a17:90a:ec10:: with SMTP id
	l16mr12105953pjy.127.1609389547227; 
	Wed, 30 Dec 2020 20:39:07 -0800 (PST)
Received: from [10.109.1.10] ([45.56.150.132])
	by smtp.gmail.com with ESMTPSA id
	y5sm46300713pfp.45.2020.12.30.20.39.06 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Wed, 30 Dec 2020 20:39:06 -0800 (PST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: running a installed program
Message-ID: <e8149886-081e-7961-eb2a-458b86e3154b@gmail.com>
Date: Wed, 30 Dec 2020 21:39:05 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
	Thunderbird/78.6.0
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hello I downloaded a app on accessible-coconut

it was gqrsdr

when I go to the list of apps using mate desktop

the app doesn't show up in the list of apps

how do I run the app first of all sense it isn't in the apps list?

Hank

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

