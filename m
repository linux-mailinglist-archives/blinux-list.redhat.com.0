Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 943AD466DF2
	for <lists+blinux-list@lfdr.de>; Fri,  3 Dec 2021 00:41:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638488475;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=64vuveSQoUSoFS1KiDTAzl/c52Yek5bNRGLFLXgXlgw=;
	b=AoRkCBGy+3cgsMHybQO9fEugG+SCsM/kOLO8PKhWEHSi8oyBPBvvvZ4i811hccNGoHKdPs
	QSab2iDxuRZSNnfpc7YcuVZzea1C9xyKTyvAzZWpetbmErBEDBdSc+ZENMMy3rY96n6e5G
	FFdZ9XfW1SbwqEvs1QXurtcgCJ2xuKY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-539-eJHCHPQzN_G3u0uNOyM0pg-1; Thu, 02 Dec 2021 18:41:12 -0500
X-MC-Unique: eJHCHPQzN_G3u0uNOyM0pg-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A74FA5EE;
	Thu,  2 Dec 2021 23:41:07 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2E02B71C80;
	Thu,  2 Dec 2021 23:41:07 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 897B34CA93;
	Thu,  2 Dec 2021 23:41:05 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1B2NdkwF020773 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 2 Dec 2021 18:39:46 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 78D282026D4D; Thu,  2 Dec 2021 23:39:46 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 736682026D46
	for <blinux-list@redhat.com>; Thu,  2 Dec 2021 23:39:41 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 728EA185A79C
	for <blinux-list@redhat.com>; Thu,  2 Dec 2021 23:39:41 +0000 (UTC)
Received: from mail-qt1-f180.google.com (mail-qt1-f180.google.com
	[209.85.160.180]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-24-RyFETmgGNdGZO-QCrHBrtQ-1; Thu, 02 Dec 2021 18:39:39 -0500
X-MC-Unique: RyFETmgGNdGZO-QCrHBrtQ-1
Received: by mail-qt1-f180.google.com with SMTP id m25so1493864qtq.13
	for <blinux-list@redhat.com>; Thu, 02 Dec 2021 15:39:39 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=PXgAj9kHrixlWdexK4a4pac6drRPGi7VvDJ5HCPoTto=;
	b=W9H3lh2IcfmqZpmJw5j8pQ8lzycPG/z39RDjScco4VSraNzVbE6U68uQKJ147UM/xJ
	JnnxAaBv+5n7BNYe4hvyJMD9KV1oyrWuBUKVOo+UXRrYQTet2DqGxsifxeBADISv1bN6
	vFE6+g1KbW2/BGHAwVYRkZWgr8lbT+CrbAgqgm03nF701Vv/BW2T6ADun0J1Ki8YAKxK
	nD3pIQRDSALTullaDTcEZCn842c7vXiKlpd13iQ7hm3I+L8Ely+GR4tEn11OOR2EcuRj
	h5tJAxR61K5rLrefllzwOjnRWIYaQ6nLTNDFX57sgcOmjT0ay6VCxXjp+irNTNFM9KY+
	/Wmg==
X-Gm-Message-State: AOAM532ABEr2XJ2g5rZfnzW1zd2Ovf1T9mVrJLIr+DvoWYcR658560eM
	Q7a4gDFwOe0MnjWK7OEZUZNPTg6GytI=
X-Google-Smtp-Source: ABdhPJwQD2qCyzupC9fg+psu6MH05CdW0pmjc8R+MrthEIVw8GvrrHKM5DBHZFRZKy3AC4ZMGfk+lQ==
X-Received: by 2002:a05:622a:2ce:: with SMTP id
	a14mr16974250qtx.445.1638488379336; 
	Thu, 02 Dec 2021 15:39:39 -0800 (PST)
Received: from ?IPv6:2603:6080:6304:450a::960?
	(2603-6080-6304-450a-0000-0000-0000-0960.res6.spectrum.com.
	[2603:6080:6304:450a::960])
	by smtp.gmail.com with ESMTPSA id a38sm832055qkp.80.2021.12.02.15.39.38
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Thu, 02 Dec 2021 15:39:39 -0800 (PST)
Subject: Re: Help booting live disk
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <8165B247-F098-4F16-8FFB-3F797D5153B0@icloud.com>
Message-ID: <e9134c6b-38f0-ad98-4fd4-4145f00e386d@gmail.com>
Date: Thu, 2 Dec 2021 18:39:38 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.0
MIME-Version: 1.0
In-Reply-To: <8165B247-F098-4F16-8FFB-3F797D5153B0@icloud.com>
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

You may also want to see what is on the screen when you have pressed F12 just to 
be sure your boot menu is up as it should be, or to find out if you're booting 
from USB. For this, if you have a smart phone, there are automated applications 
you can use that will read to you the text on the screen. BeMyEyes is also 
another good resource from your phone that will connect you to a live person if 
you prefer that method.
~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

