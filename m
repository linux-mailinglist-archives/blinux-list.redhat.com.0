Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 923DE473F32
	for <lists+blinux-list@lfdr.de>; Tue, 14 Dec 2021 10:19:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1639473558;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=C376QNDN+8+dUXdR0g+JW/jMMdWa7uTustRtp+QmPFU=;
	b=R3zfiN08491sV9Ys7tYa58QEMFCEekB6sJN+vxwRn02na4pLtm+bJx4ceg50m3X6LEL43u
	29KR33A8EndmtfEgmCEUsYsTl+z0pw3VaviTrtQbgaDWB6jaD+LQIY1BfV9vnKVUTtJEx0
	FaLebcmrsGmWgDvRrvJIXcBD1TDlIdE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-453-yQSjcQb4MeKSSA53wKhT2A-1; Tue, 14 Dec 2021 04:19:15 -0500
X-MC-Unique: yQSjcQb4MeKSSA53wKhT2A-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4354110B744E;
	Tue, 14 Dec 2021 09:19:09 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 39C672B178;
	Tue, 14 Dec 2021 09:19:04 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 9FF531809CB9;
	Tue, 14 Dec 2021 09:18:54 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1BE9IhXA013119 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 14 Dec 2021 04:18:43 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 881A74010FFE; Tue, 14 Dec 2021 09:18:43 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 82B4340CFD0C
	for <blinux-list@redhat.com>; Tue, 14 Dec 2021 09:18:43 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 658D985A5B5
	for <blinux-list@redhat.com>; Tue, 14 Dec 2021 09:18:43 +0000 (UTC)
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com
	[209.85.221.53]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-288-kH2j0dOsPAuB48n9l2yvBQ-1; Tue, 14 Dec 2021 04:18:41 -0500
X-MC-Unique: kH2j0dOsPAuB48n9l2yvBQ-1
Received: by mail-wr1-f53.google.com with SMTP id q3so31223398wru.5
	for <blinux-list@redhat.com>; Tue, 14 Dec 2021 01:18:40 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:from:mime-version:subject:message-id:date:to;
	bh=5SQFNtboENM1stOB2mwTPLD/jE4336NXOWyei7OXo+g=;
	b=LohvwobWXXKhYqgnTdtekYSWV0a6cY9zqXSO2UTkn35ir4D6j02aC/3hiA7h93Cz2A
	4OecG5O57fyYkPwmleCCAQKjDOxr1DrYqVxTOK5SlxpCzvWfzLRu3STqK4WYpdLujtjW
	pHXvmd3qW66tt64FCeXo/nDGKO7bJJVTAoJ5pHamiSfOWrsd7OfdQ5uwN09bBofpGHIT
	hOAmkzN157TJrWTNq/XYqHeHEMs4r2uPGQ95vCFRgxy8fbb5+zEKW06TT38imfLac/Eg
	a1bcka6hEQe0VaIzlIccpDI1QjHWf+OxweQ4g63bq9tq9AiH3FPRkDO3wR6iMbsYCebL
	ImvQ==
X-Gm-Message-State: AOAM533wdUZg4S+bRm7x7Ae1CCUyu5K8iTyz0QcF/StwU3jIPcQpUU/h
	ONkPd5A4/iOW1h5ApkaIqd1jaTuQSbg=
X-Google-Smtp-Source: ABdhPJxJutKsRMI0PekKsAOZAtEigStfbg6tBQicedA0eHRCk0sAagoGb8s7GXa0uak7lEhDP9Ek0A==
X-Received: by 2002:a05:6000:4b:: with SMTP id
	k11mr4606561wrx.86.1639473519694; 
	Tue, 14 Dec 2021 01:18:39 -0800 (PST)
Received: from smtpclient.apple ([197.184.183.90])
	by smtp.gmail.com with ESMTPSA id m1sm1465227wme.39.2021.12.14.01.18.38
	for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 14 Dec 2021 01:18:39 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 15.0 \(3693.20.0.1.32\))
Subject: Attempting a Jenux install, again.
Message-Id: <1C2D6AE2-C6C3-4776-AE48-7265C64E8C87@gmail.com>
Date: Tue, 14 Dec 2021 11:18:36 +0200
To: blinux-list@redhat.com
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.1
X-loop: blinux-list@redhat.com
X-Content-Filtered-By: Mailman/MimeDel 2.1.12
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi all,

I decided to give Jenux another go, last time, no matter what I tried, I couldn't get orca to come on after logging in to the system.

Does anyone have any advice?

Also, if this doesn't work out, is there a guide for doing a Manjaro architect install? "Manjaro Talking" got updated a little while ago, and if, as I said, Jenux doesn't work out, I'd like to give that one a go.

Thanks so long.

Warm regards,

Brandt Steenkamp

Sent from my MacBook Air

Contact:

Phone: +27 (0)60 525 9181 <tel://+27605259181>

Email: brandt.steenkamp@gmail.com <mailto:brandt.steenkamp@gmail.com>

Twitter: @brandtsteenkamp <http://www.twitter.com/brandtsteenkamp>




_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

