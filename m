Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 969CF4992C1
	for <lists+blinux-list@lfdr.de>; Mon, 24 Jan 2022 21:26:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1643056009;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=5/tZQPaRLDaIsYnWYlLYxtW10A72HLdEZx6QYN5eLrw=;
	b=bv7qd04qY9d2qV1XHjnD1MrTh0FweBzlsIwjVTHMuh8ZB8tJW2w2wAWgfddPUecU6W9mvK
	/HOp+sYpH2FhdnES8WPlrSoH9U/w7DmKMjbL7suBqot/O3/l6J3V2D+ztb9goH6FNn8i13
	qCU14rMi84M54dxhyCkZEgxwXRYNjMc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-462-dcCvux_BMheOUGcazO2uJA-1; Mon, 24 Jan 2022 15:26:46 -0500
X-MC-Unique: dcCvux_BMheOUGcazO2uJA-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3D6023E741;
	Mon, 24 Jan 2022 20:26:42 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D66BB101E692;
	Mon, 24 Jan 2022 20:26:40 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 0A9A31809CB9;
	Mon, 24 Jan 2022 20:26:28 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20OKQJXb015916 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 24 Jan 2022 15:26:19 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 5653A40470C1; Mon, 24 Jan 2022 20:26:19 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast08.extmail.prod.ext.rdu2.redhat.com [10.11.55.24])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5289840470C0
	for <blinux-list@redhat.com>; Mon, 24 Jan 2022 20:26:19 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 3ABE6381A149
	for <blinux-list@redhat.com>; Mon, 24 Jan 2022 20:26:19 +0000 (UTC)
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com
	[209.85.208.44]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-198-CGVJqb3hMDW_S6OQQLKwpA-1; Mon, 24 Jan 2022 15:26:17 -0500
X-MC-Unique: CGVJqb3hMDW_S6OQQLKwpA-1
Received: by mail-ed1-f44.google.com with SMTP id a18so58536272edj.7
	for <blinux-list@redhat.com>; Mon, 24 Jan 2022 12:26:17 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding:content-language;
	bh=b6ZeokPmGJEfNFATDTIskDHyvwnkW9cKWI16xg//CpI=;
	b=t399MoxpHM9mTlBz6mj5pIwd/WH31KwR0IlImI6vAZtdL1iL5pleJOlC+ulO/8k8Qo
	QsvrtOJPkJrdO9/cTkSUVbF39vv8z/BighxqESH2oY5rbOa1lRwfIMWtKPxmHCoQnxLk
	syL/c1AnerSp87VcOGPISRNfmcxGUf+DbmO2urgF3kcSVsGxpiF2NiUDiznHQJshyfnv
	+5UWV412mNjs0VWHIQg1cIjzpGt6+HDTvvQQtyQZ+5Ax//Is1IUMlOV571CjGClqMfdy
	TKPL+Rj2Aa8StOpvunxprvDsp7V8PTz9Uc84uE3jgwHPf7IfJrcN+oCFRXH5gFrQIoYK
	jtlA==
X-Gm-Message-State: AOAM530pvJcrZ7+Hh3wp8+XJkkUo1a7Ez4RnLzX1U7EgjXfbLEE8YVDo
	PwEhsJSA5QM7BLs+jD9Z327BFFcYuIc=
X-Google-Smtp-Source: ABdhPJzv/zUgZ8ei2L5gD70i19dggm1bpD5nH3AWHqHkt53xpGVoo/58Kik/ZuhnfdTLAsyZJ/gU/Q==
X-Received: by 2002:a50:ab5d:: with SMTP id t29mr12696246edc.371.1643055975852;
	Mon, 24 Jan 2022 12:26:15 -0800 (PST)
Received: from brandt-slint.study.home ([197.184.176.134])
	by smtp.gmail.com with ESMTPSA id
	gh14sm5275821ejb.38.2022.01.24.12.26.14 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Mon, 24 Jan 2022 12:26:15 -0800 (PST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Applications menu missing in Ratpoison
Message-ID: <2aac53e8-ef6b-62e2-0539-0db8ab234818@gmail.com>
Date: Mon, 24 Jan 2022 22:26:12 +0200
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hi all,


After redoing my .ratpoisonrc with strycnine, I could finally use the 
thing as intended, however I found that I don't have an applications 
menu. Orca is also not starting after I run startx to get to the desktop.


How can I fix these issues?


I really, really like ratpoison so far.

-- 
Warm regards,

Brandt Steenkamp

Sent from the Slint machine using Thunderbird

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

