Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id AF84E453C5B
	for <lists+blinux-list@lfdr.de>; Tue, 16 Nov 2021 23:44:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637102688;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=nj4/ijIP07eAbFhXaf0CWNf5XmYwkd0Kk7C6X21ORsk=;
	b=RTz+/vtoGsfgVPDfgprOwIs9Z/w4Xa2WAmk5dLV1nlBDVwK/GKlMuO2yIGNQlo7EqjA68R
	qZS+8O3DO0z2dpj2hZoWzAzrzlXqMxtk/sZgnHbAY9AQwHewdRsCy/ibcHOQ0lFXuSFwfp
	8yQvaPpDf7++fi9szMY1nI1jdVo+qqE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-116-2Zv0UAZCPUSGHBjE0g-eOA-1; Tue, 16 Nov 2021 17:44:45 -0500
X-MC-Unique: 2Zv0UAZCPUSGHBjE0g-eOA-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 2CB061851726;
	Tue, 16 Nov 2021 22:44:41 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5622C5F4EF;
	Tue, 16 Nov 2021 22:44:38 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id BB09F1819AC1;
	Tue, 16 Nov 2021 22:44:33 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AGMbwGW017906 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 16 Nov 2021 17:37:58 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 5519240CFD12; Tue, 16 Nov 2021 22:37:58 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4DC064010E89
	for <blinux-list@redhat.com>; Tue, 16 Nov 2021 22:37:58 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 34DA0811E81
	for <blinux-list@redhat.com>; Tue, 16 Nov 2021 22:37:58 +0000 (UTC)
Received: from mail-qv1-f41.google.com (mail-qv1-f41.google.com
	[209.85.219.41]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-32-XlrP65gpNbGFCJ09BIrlrw-1; Tue, 16 Nov 2021 17:37:56 -0500
X-MC-Unique: XlrP65gpNbGFCJ09BIrlrw-1
Received: by mail-qv1-f41.google.com with SMTP id v2so608232qve.11
	for <blinux-list@redhat.com>; Tue, 16 Nov 2021 14:37:56 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=4XlhUmM5d2yL1VWGq6dmRth8x95d6Do6NCNAgCQMRGk=;
	b=Jb3znfcwT3X5MI4srrXWZpfiMKyksUZ7cRE5O22BjwthirHLQ7tpCZOkW1G1V+5iaM
	6cRTYF7xjMtMc94DDxP/0/SLBGpCkqBxeLQ4P7n/qaahIJMKJr50pyozgs3S0SviQs2D
	TODQjhPWi+ZNkp/hECUtlW/GuAxiKjRzXki3X7hyydqhXVGl2pOkIVO+/ZVUGUD+m5me
	tgH3jWKmJ/iFtNbVG9/WIO8/iODdZ1J/PLHa/mmcORjX4vNwNxDkrvQsl1ACknmF9Fs6
	hy7Bd3MSI3p3bhzFqdKKz0Zs1XatTL2j2P48Bpv/HxWrOeLh3TzTYuq4/jS+5iewm5Ti
	resw==
X-Gm-Message-State: AOAM533vt6pSBPRM8AnR5uhErUrPSARhrVl5WMRVIymZUJX3EuN9Eq0m
	Wkk4+Sh0OmMJnjhOk0z1N60nmPHPeu0=
X-Google-Smtp-Source: ABdhPJwhJZ/mP7rUr/9nxez1rYrxtvzYURcNSE2G3eXCulEjSEW+xwDFhTiJB4+xP637sxQKU6wyIg==
X-Received: by 2002:a05:6214:1ccb:: with SMTP id
	g11mr43183327qvd.31.1637102275953; 
	Tue, 16 Nov 2021 14:37:55 -0800 (PST)
Received: from ?IPv6:2603:6080:6304:450a::960?
	(2603-6080-6304-450a-0000-0000-0000-0960.res6.spectrum.com.
	[2603:6080:6304:450a::960]) by smtp.gmail.com with ESMTPSA id
	bi6sm7858471qkb.29.2021.11.16.14.37.55 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Tue, 16 Nov 2021 14:37:55 -0800 (PST)
Subject: Re: Correcting an sd-card?
To: blinux-list@redhat.com
References: <c28c932c-ef31-339c-ab9f-b875fab8d259@hubert-humphrey.com>
Message-ID: <a257cb5e-685f-1c7a-b41a-16e42fa74511@gmail.com>
Date: Tue, 16 Nov 2021 17:37:54 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.0
MIME-Version: 1.0
In-Reply-To: <c28c932c-ef31-339c-ab9f-b875fab8d259@hubert-humphrey.com>
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Sounds like you need something like
sudo fsck.fat -a /dev/sdg1
This will check and automatically repair the fat (DOS-style) filesystem on the 
sd card, using the least destructive repair method if multiple methods can be 
used. One problem you may face with such repair tools comes about when the tool 
has to restore what it calls orphaned inodes, unmarked clusters, etc. These tend 
to be stored in files that just have numbers or similar unrecognizable 
filenames. But what it will certainly do is make the files it can repair 
readable once again. Hope this helps..
~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

