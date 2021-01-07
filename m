Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id A0E492ED116
	for <lists+blinux-list@lfdr.de>; Thu,  7 Jan 2021 14:46:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1610027172;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=rpNFHxjZvFkn99lt4yfxzs0amiJNLmCsbRwZq6qCPO4=;
	b=H/YF9Qh4YqXo+RJfocRE15w3qjMLbQbnZjMrRDqynY+1fT3euUBNM4miECUlPhj8OqQP/F
	S2Myo5DxdWg09GoKDA1UVRPzLUUbPFFjvTatrNyumIXeH0hdC+GqoM+89SWmwD76S8My0K
	Db91HoKJ+1fC0UsCYIYX+4MZwBHkgA8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-235-2F6I-OAVPQWIFXtc5C89bw-1; Thu, 07 Jan 2021 08:46:10 -0500
X-MC-Unique: 2F6I-OAVPQWIFXtc5C89bw-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 89CCAE76A;
	Thu,  7 Jan 2021 13:46:03 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B0FDE1001901;
	Thu,  7 Jan 2021 13:46:01 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 0E314180954D;
	Thu,  7 Jan 2021 13:45:53 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 107DjjPx029116 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 7 Jan 2021 08:45:45 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id EC3B8C77D4; Thu,  7 Jan 2021 13:45:44 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E659CC77DA
	for <blinux-list@redhat.com>; Thu,  7 Jan 2021 13:45:42 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 46473858281
	for <blinux-list@redhat.com>; Thu,  7 Jan 2021 13:45:42 +0000 (UTC)
Received: from mail-oi1-f182.google.com (mail-oi1-f182.google.com
	[209.85.167.182]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-440-I8pi9NuaP0WE56a0jlg-ag-1; Thu, 07 Jan 2021 08:45:40 -0500
X-MC-Unique: I8pi9NuaP0WE56a0jlg-ag-1
Received: by mail-oi1-f182.google.com with SMTP id f132so7347030oib.12
	for <blinux-list@redhat.com>; Thu, 07 Jan 2021 05:45:40 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:content-transfer-encoding:mime-version
	:subject:message-id:date:to;
	bh=xDO8cXbufuP0h0QI1/SPBn/WDs1cRI43L9qhu9Zra2E=;
	b=YZXCymcOs6WmckGUNtewWrsdG4SEiTqrgxfN5o0FC9zRndD1eIgnXLdE+FbVS0+hvt
	Pus8ivnv30dJlmPSnfnb7/OI6frVChBpsos/Y0kUpE48Nc2leAPRYQNKAlTd2rPnPKwk
	QoVLsHhKnGvtGDsVh953AkDzTSSKy+EKcoPc7cKNQq1Wk8wUuZoB4rOIx2b8Rdr/14pO
	pXlnBeZvT6ruHe+sQPYVhmuq8H9nCz1TA6IdI5bS5pycsHDuBjL9SYgiBGhz6SbSSlEX
	PoUiBE4FAiSMPvvuTaHg9D5YDwJgyJj4DuDpKoqbSX+xDKwpTLmhTakluFRLkHd8BB/T
	d2nQ==
X-Gm-Message-State: AOAM533vu8ee+fbcKul28TlS/er5lUQJLunH7HhLB0cM80+fEwF9iL7n
	vb9uN7gDJnExPEekggMtRQVHV3ZEdY4u4A==
X-Google-Smtp-Source: ABdhPJxe5hqy/YWizIP02ivBtVTZdVWLxhR6KOo21FL9BfH33KCQkVlTzsuGBqUIGLPtZBZvvF1VEA==
X-Received: by 2002:a54:479a:: with SMTP id o26mr1389373oic.48.1610027139127; 
	Thu, 07 Jan 2021 05:45:39 -0800 (PST)
Received: from ?IPv6:2601:3c2:8200:9360:d446:280a:b092:50a7?
	([2601:3c2:8200:9360:d446:280a:b092:50a7])
	by smtp.gmail.com with ESMTPSA id
	z38sm1120685ooi.34.2021.01.07.05.45.36 for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 07 Jan 2021 05:45:37 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.7\))
Subject: vlc in slint
Message-Id: <F43B716C-FE44-4907-AE75-DBD15FE6A994@gmail.com>
Date: Thu, 7 Jan 2021 07:45:36 -0600
To: Linux for blind general discussion <blinux-list@redhat.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 107DjjPx029116
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I have used vlc with windows, mac and with ubuntu.
With each one, the menu structure and keyboard commands were somewhat similar.
With the version of vlc in slint, a distro which is slackware-based, it is quite different.
Anyone have ideas as to whether I could set up vlc to be as it was in other versions of that program?


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

