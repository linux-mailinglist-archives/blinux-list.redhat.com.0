Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 78621450963
	for <lists+blinux-list@lfdr.de>; Mon, 15 Nov 2021 17:17:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1636993073;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Q1fMbrciplbEkhekgZ1Y8atOvBkfo9axONLK+hH1MEQ=;
	b=IOCXar2ry6M4pxPjIWTVHxHWwHYpif/MAQ6phPAjZunEi84py38+8ebN53y4+L5xpDkkPO
	7YKphgQD7Toi/2a+Xr+e5h+fOhA9QKJHyOSRI+G0yxudQGVWJgLqUuiJR36PtCr0rWFQIc
	mzIQ9HhvEPQcpC+W1vpQsIKbGNMxt3A=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-227-oXxk3TzrO7Sn-lcxlNPBow-1; Mon, 15 Nov 2021 11:17:50 -0500
X-MC-Unique: oXxk3TzrO7Sn-lcxlNPBow-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8B1AD9F92D;
	Mon, 15 Nov 2021 16:17:44 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D8A8260657;
	Mon, 15 Nov 2021 16:17:43 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 1CE984A702;
	Mon, 15 Nov 2021 16:17:40 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AFGHamS027911 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 15 Nov 2021 11:17:36 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id DEBF3404727E; Mon, 15 Nov 2021 16:17:35 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id DA35C404727D
	for <blinux-list@redhat.com>; Mon, 15 Nov 2021 16:17:35 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C0DE8185A7B2
	for <blinux-list@redhat.com>; Mon, 15 Nov 2021 16:17:35 +0000 (UTC)
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com
	[209.85.128.45]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-401-G-A_2mJDOW2w-vFVDwIVug-1; Mon, 15 Nov 2021 11:17:33 -0500
X-MC-Unique: G-A_2mJDOW2w-vFVDwIVug-1
Received: by mail-wm1-f45.google.com with SMTP id
	p3-20020a05600c1d8300b003334fab53afso13381936wms.3
	for <blinux-list@redhat.com>; Mon, 15 Nov 2021 08:17:33 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=c4UWRLm647vkVYPhxY6jRjOLlyoboqlvE4U7J4G2RtM=;
	b=Z9DqBFgMVO+hVa2o4vogLzKWtwudIzGuXXP5MHXkzbiPiCKePIeBRf+Fm2SdDo0+Wx
	ZZmbbyCPBv0jRvbATm3xsAZDfA1OJa3Bks3jT4ZvSf9CZTe8sbp3bwas6U4WkbXbnTIe
	P2XV464K+99OGmcbYSVqSyuAbaUO45I2rFpFBZK+ifCMd+Fm0oFw4iUpoUHKBNi/Gawx
	Na1I50T9F+w/f1QU1e79TmsQQb/P6UaTiRpOwBKIr84/Kcpr3KU83in/6F5IeACenIQw
	Mks8SWnt7ZXv0SAmA6w/7vfnBZEhILZ7tu8uSMpzYc90ojHzN2IvmBcPi8nRMLR9AGsJ
	jN6A==
X-Gm-Message-State: AOAM530g4cUQcpWd73UbW4J4+FXlXAqJRi85Uj9IvozhKD8SblAAmdI2
	zZF+6/NxIHwZtzaXe+1vEiC70DsbgdqHKU63
X-Google-Smtp-Source: ABdhPJzs9XVRRCUTIMMNC8XUDhVXDMRaulSxgkVOw1KGuypv/0EjP7i905OR5+94QOCrQq6y3IzbGw==
X-Received: by 2002:a05:600c:1f19:: with SMTP id
	bd25mr43174920wmb.75.1636993052260; 
	Mon, 15 Nov 2021 08:17:32 -0800 (PST)
Received: from [192.168.1.130] ([90.254.199.66])
	by smtp.gmail.com with ESMTPSA id
	h17sm20364304wmb.44.2021.11.15.08.17.31 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Mon, 15 Nov 2021 08:17:31 -0800 (PST)
Message-ID: <b3442e6d-d81f-d141-3f93-dcc77665e9aa@gmail.com>
Date: Mon, 15 Nov 2021 16:17:40 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.3.0
Subject: Re: any other accessible email client for linux?
To: blinux-list@redhat.com
References: <4015f410-14f1-6c3b-b0a5-7688b34c418e@gmail.com>
	<b415a935-f50d-a71b-0ddd-30d1f8ac6146@gmail.com>
	<df15eb1f-989b-b8fb-f90c-8fa6817be487@gmail.com>
	<alpine.NEB.2.23.451.2111141627140.871@panix1.panix.com>
	<6bb0a456-bfc5-e1dc-5886-5dc32687c580@gmail.com>
	<b356b32b-3de9-88fb-c8d2-26876231dcc1@gmail.com>
	<2e84caa3-a3ce-d38b-b2e7-10d1d1b495bb@gmail.com>
	<alpine.NEB.2.23.451.2111150036130.24447@panix1.panix.com>
	<e7972124-81a0-c317-6b97-5ae6dd1fcce3@gmail.com>
	<8328bea3-a6d8-12ef-210b-5cbc9f46b849@gmail.com>
In-Reply-To: <8328bea3-a6d8-12ef-210b-5cbc9f46b849@gmail.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Mine didn't, so is there a way to manually trigger the import wizard 
again? I've got the welcome and chat/feed/etc account lists with the 
latest Seamonkey version, which isn't quite what I'm after really

On 11/15/21 15:31, Linux for blind general discussion wrote:
> Just start Seamonkey mail for the first time. Import comes up just 
> after you hit the next button on the welcome screen. Thunderbird 
> should already be selected on that screen, and your mailboxes will be 
> imported automatically.
> ~Kyle
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

