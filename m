Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 519713DD112
	for <lists+blinux-list@lfdr.de>; Mon,  2 Aug 2021 09:19:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1627888790;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=AR0UCU9Vnn0d3az4gHbw9oNfbBFn/XJacWr2kYcn76E=;
	b=bKd4RNVshM7TQUxv/m3k1CeJOF8i2v7Gmuot0QiEL5xmvprsdxGO4kje5GRiOf2Abtcj9J
	lfRQxKqMt2KeYJYhfEGeOWaT5a3hco6HFiX9+5dJGzljl/w8Sn76m6dnvyIoaQ/EA2A4J+
	TKlYr57jvxRbO5im58SrtjlUMXo73S8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-337-epMkzo3PPTmBBF1tgnGuTA-1; Mon, 02 Aug 2021 03:19:48 -0400
X-MC-Unique: epMkzo3PPTmBBF1tgnGuTA-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 48BDAA0C07;
	Mon,  2 Aug 2021 07:19:43 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A1B695DD68;
	Mon,  2 Aug 2021 07:19:39 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id D91004A7C8;
	Mon,  2 Aug 2021 07:19:30 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1727BvSU018391 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 2 Aug 2021 03:11:58 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id D5978200AFD4; Mon,  2 Aug 2021 07:11:57 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D1EE0200BA61
	for <blinux-list@redhat.com>; Mon,  2 Aug 2021 07:11:54 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id EE5B7101A529
	for <blinux-list@redhat.com>; Mon,  2 Aug 2021 07:11:53 +0000 (UTC)
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com
	[209.85.208.51]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-376-vUiXAORYMEmYHhtLZwBfMQ-1; Mon, 02 Aug 2021 03:11:51 -0400
X-MC-Unique: vUiXAORYMEmYHhtLZwBfMQ-1
Received: by mail-ed1-f51.google.com with SMTP id y7so20854101eda.5
	for <blinux-list@redhat.com>; Mon, 02 Aug 2021 00:11:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding:content-language;
	bh=3YjhfK60a7A/v4PVKTcC2Br1PIvt/6KR48zTBwnKB7I=;
	b=o5b0jiQCE9IBBEY9M4uPIiDjt/nn+Cvu0y5MERr31tyOlweMvfc7E3cUVJpGuUGmUF
	vI0hCvfvTe2Kz7pfzETYl5G+kXbrpGAj0vFShwyzs0eSP8xXOTS8sB+PQGabC/Bs1zHy
	ft9xXGmMQLXDdt2qzKQxjGM7/yCynl1M+IwTsQjlwWcjYSY1Eds/GyfdR8f29QSko35L
	/ztYeKNmN5amdG14l2FZ9LKA2I43/bdaPYOdnyYAKxAgwhIMN7ChnYyDKgmT+zXh6vGD
	fVxVfy43C8qngpknynnTNi+ocNX0DGLS0kJaF9aP9LRMFRk7QJtizL6e4YjV9GJFMRXq
	ysxA==
X-Gm-Message-State: AOAM531xd8Nsm/FPtHyjhzlkbb0Ebdzqn3czYltdFG1JaAqZGaMHCaA0
	hhQjWruf+kf52VsWKKzq0iJlzKNqDIU=
X-Google-Smtp-Source: ABdhPJydSk8fFsKAQNcyS9oGvqwTVI6gd4ycRLcqttZwOgfaphBpq0MoyZeywKjOadjDQaIgvSHwHA==
X-Received: by 2002:a05:6402:1846:: with SMTP id
	v6mr17835399edy.198.1627888310280; 
	Mon, 02 Aug 2021 00:11:50 -0700 (PDT)
Received: from darkstar.example.slint ([197.185.110.57])
	by smtp.gmail.com with ESMTPSA id
	z16sm5401337edr.51.2021.08.02.00.11.48 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Mon, 02 Aug 2021 00:11:49 -0700 (PDT)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Installing the Orolux IBMTTS version of Eloquence on Slint?
Message-ID: <e1e89997-d831-ff6d-0b95-3a92f611e099@gmail.com>
Date: Mon, 2 Aug 2021 09:11:45 +0200
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
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
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
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hi all,


Ok, this one has been driving me crazy. I have successfully installed 
eloquence on pure Arch, Manjaro, Fedora, Debian, Ubuntu and Mint. I just 
cannot get the damn thing to install on my Slint system.


If anyone can help, I would be really grateful.

-- 
Warm regards,

Brandt Steenkamp

Sent using Thunderbird from Slint

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

