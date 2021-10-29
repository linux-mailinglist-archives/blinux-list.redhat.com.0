Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 54DB9440011
	for <lists+blinux-list@lfdr.de>; Fri, 29 Oct 2021 18:09:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1635523770;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=NRTf7IwiDPZqJ1K02+yrGdEdwRZmol/7qAUt+tdauWg=;
	b=AFI8EUw/M7AxGL4YYNFKSS+i0iMyzONGgBAOfJVv18ynwycEIG4UUXn9f3P2bIUiNOcYRx
	K5LKzSggFxuFbEeOFoXiSP3gax+72sca+vjW0Be8tUgy4V8e7pqa8Y8aVW7mxTzVRIDoFh
	g+iMhyMF4/akJSrlKl2J8TbKMuvWgUI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-489-fn4D4vf5MN-iqMaKvamhbg-1; Fri, 29 Oct 2021 12:09:27 -0400
X-MC-Unique: fn4D4vf5MN-iqMaKvamhbg-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 6CF951966320;
	Fri, 29 Oct 2021 16:09:21 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id EFCE31007625;
	Fri, 29 Oct 2021 16:09:20 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id BC0C51806D04;
	Fri, 29 Oct 2021 16:09:17 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 19TG9Dcw024840 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 29 Oct 2021 12:09:13 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 7989C4010FEC; Fri, 29 Oct 2021 16:09:13 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 747FD40CFD10
	for <blinux-list@redhat.com>; Fri, 29 Oct 2021 16:09:13 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 5AF81899EC3
	for <blinux-list@redhat.com>; Fri, 29 Oct 2021 16:09:13 +0000 (UTC)
Received: from mail-qt1-f173.google.com (mail-qt1-f173.google.com
	[209.85.160.173]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-198-RE4OjGgPPwypl0JH7hGMrA-1; Fri, 29 Oct 2021 12:09:11 -0400
X-MC-Unique: RE4OjGgPPwypl0JH7hGMrA-1
Received: by mail-qt1-f173.google.com with SMTP id 19so7963369qtt.7
	for <blinux-list@redhat.com>; Fri, 29 Oct 2021 09:09:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language
	:content-transfer-encoding;
	bh=qtQYhIjeZQsIomIk/tTigNataeGbtrFerlF0kjHzbmM=;
	b=mQH+B/bCRO+yq7L0Wg6zvIQlh//N6Hc+iCu8UTHT7OrW0bSAN6mGrJkvMHWC9Y/lL+
	dmTnbCitHezObSwog2cy+Ue/qDy3TyRN+k6CCUISiOnhWprsVKmu71MEgJm2we30vGM4
	uaCGmfdOWMAmV9oVsj9AkSmVYXhBXWYjUkk4PD9XLD0ldY4wwuHH0UzMY1ltd6Yrqbk9
	ty6/sb3wrfcx0X8lwSS4uMZzN9/HFLhYscqx4Vlw4ge5lKpz2fMqTI1mqinxqeLZyKgz
	zV6AuE+PJOYgp6G3q5qfwRqZyuiDtS7jJH4vZj4o3osB7Apnh4eF2IhYdZtsmNW8T6Nc
	vpmw==
X-Gm-Message-State: AOAM533p/ulc6Yw8vzGlQY8N2vpzwjI56DogD0lXxSk5jyiX7FIKaLXD
	If9kmrfjpWbm3Ub+iQl7HjVXMLIEPbA=
X-Google-Smtp-Source: ABdhPJyA9s60frNk0239TmiUWFvjo/xy19w4EK8GBB29PNTehn2DmlhPbo/91HEaYE0pXqCImpSIRA==
X-Received: by 2002:ac8:7f52:: with SMTP id g18mr12728871qtk.196.1635523749839;
	Fri, 29 Oct 2021 09:09:09 -0700 (PDT)
Received: from [192.168.11.151] (d-65-175-184-10.nh.cpe.atlanticbb.net.
	[65.175.184.10])
	by smtp.gmail.com with ESMTPSA id k16sm580049qkj.70.2021.10.29.09.09.09
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Fri, 29 Oct 2021 09:09:09 -0700 (PDT)
Subject: Re: Can I run an accessible version of linux under windows?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <66F2A8CB-2631-469B-9594-F3173CD00F69@gmail.com>
Message-ID: <80fb0ccd-1735-cf18-2edf-a27ec074e961@gmail.com>
Date: Fri, 29 Oct 2021 12:09:07 -0400
User-Agent: Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:78.0) Gecko/20100101
	Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <66F2A8CB-2631-469B-9594-F3173CD00F69@gmail.com>
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

I just realized that I gave you the wrong keyboard command to start the 
Orca screen reader. The correct keyboard command is Alt+Super+s. 
Remember that Super is the same as the Windows logo key.  If you are in 
the Linux desktop, you can also press the Alt+F2 combo and type Orca and 
press Enter. The Alt+F2 combo brings up a Run command box, where you can 
type commands. Also in the Mint Mate desktop, pressing Alt+F1 brings up 
a menu, which you can navigate with the arrow keys. Pressing the Super 
key by itself also brings up a menu much the same as the Windows start 
menu. Here, there is a search box where you can search for commands. For 
example, if you type "power", it will bring up entries related to power 
management. You can use the arrow keys to highlight the one you are 
interested in and press Enter to open that program.

Sorry about that. Too many keyboard commands floating around in this old 
head.

Best,
John

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

