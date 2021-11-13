Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 4504044F4BB
	for <lists+blinux-list@lfdr.de>; Sat, 13 Nov 2021 19:59:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1636829985;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=OZFEL+dXFQBbz0j0lmh3HAGSEYBWiCaVjhyA1wCP6sg=;
	b=DCawLn3/FO6y8z1BAM7EJ7vxGPWDBL5ghY97GJ+w+VXNmMurBLYVqSSl1JLB6mX1JkwGiK
	zSmZfk71APGHiWfAAcIkwuS4bk5f2+ZRimmMurka3yesdHbYBtxvEs48WCply0dkVPCBj6
	PKr5epQJcRKAOxx8Yn6AYhTg4XxdX/k=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-18-t7kiZHNnPR-dnc4TVQuIYg-1; Sat, 13 Nov 2021 13:59:41 -0500
X-MC-Unique: t7kiZHNnPR-dnc4TVQuIYg-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8EE101922023;
	Sat, 13 Nov 2021 18:59:37 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D98A660854;
	Sat, 13 Nov 2021 18:59:36 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 449694A703;
	Sat, 13 Nov 2021 18:59:33 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1ADIxSi3014408 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 13 Nov 2021 13:59:28 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id E66BB40D1B9E; Sat, 13 Nov 2021 18:59:27 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E1FEE40D1B9D
	for <blinux-list@redhat.com>; Sat, 13 Nov 2021 18:59:27 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C7610185A7B2
	for <blinux-list@redhat.com>; Sat, 13 Nov 2021 18:59:27 +0000 (UTC)
Received: from mail-qt1-f179.google.com (mail-qt1-f179.google.com
	[209.85.160.179]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-507-oSTsMRj8Mn6b9YoiPGSjXw-1; Sat, 13 Nov 2021 13:59:26 -0500
X-MC-Unique: oSTsMRj8Mn6b9YoiPGSjXw-1
Received: by mail-qt1-f179.google.com with SMTP id f20so11391836qtb.4
	for <blinux-list@redhat.com>; Sat, 13 Nov 2021 10:59:26 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=hWJtGgQK4NfNnoKCN1pOjwRdgln6SZpnyhMoQUNv1RM=;
	b=X2PQiz6UxciM/xqPJqE0cHVvLixNCXckkD6O1GzznIDCBsvLD2mRWAifafa+4TxARw
	6vKO8LK8T9Vxq95WjSF7xSKV5D5PrTn8UmvPez/gLRYWgSJBvvWfZ2dt0DQrfVAAfrgb
	J1myK3kXMupvDUJcdkCii0v0nzI2ihHMOeuEw3lBlf/VIT23KE3udY6xhAW5mRHyNVFD
	MIfvdQ7BSFevZirH3mjzhN5PKTFhKjgK0JHR9Mgl7hJXhjJilNMKdxSrTmntqbLGDyeH
	qYSJCLMgfFa6HFa7N2+WISvpwSlOI9RcBICcZr/26qis7VF3QzzYZxiff5T4/+liy+lz
	hGGQ==
X-Gm-Message-State: AOAM533w2DbzcWGtCr4MxQSysjHguK9Z+96IpTLktrAU9A9hcYtw2i+9
	iKE8j4gcj5CZdOp50nzT4rzGxwNCj9w=
X-Google-Smtp-Source: ABdhPJwz6tknG95bO5y1NHLJqzj1/L4cNpBPg1gs0v9cS5JWp12GezzJyB/6s/obx/peN5rpRHjFeA==
X-Received: by 2002:ac8:57cc:: with SMTP id w12mr1455017qta.82.1636829965632; 
	Sat, 13 Nov 2021 10:59:25 -0800 (PST)
Received: from ?IPV6:2603:6080:6304:450a::960?
	(2603-6080-6304-450a-0000-0000-0000-0960.res6.spectrum.com.
	[2603:6080:6304:450a::960]) by smtp.gmail.com with ESMTPSA id
	u18sm4708789qki.69.2021.11.13.10.59.25 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sat, 13 Nov 2021 10:59:25 -0800 (PST)
Message-ID: <8a83ad83-7d3c-c5f5-4bb5-e1c8d657c804@gmail.com>
Date: Sat, 13 Nov 2021 13:59:24 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.3.0
Subject: Re: any other accessible email client for linux?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <b92effa3-e60f-02aa-a7b8-3102adfe2e4a@gmail.com>
	<YZAAhqsubBVL2pNl@panix.com>
In-Reply-To: <YZAAhqsubBVL2pNl@panix.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

The Mutt email client should come with a warning label:


CAUTION: FOR EXTREME POWER USERS ONLY!


I'm sure if you like emacspeak, you'll probably love Mutt, as I gave up 
on EMACS as a whole after 5 minutes and gave up on Mutt after about 2 
weeks. But someone who is using Thunderbird as the thread starter has 
said should steer clear of Mutt and avoid it like the untamed, mangy, 
flea-bitten dog that it is.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

