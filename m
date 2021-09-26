Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 24FE0418A14
	for <lists+blinux-list@lfdr.de>; Sun, 26 Sep 2021 18:04:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1632672258;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=PE2t5a3F8hbRzdQOis2ZZLn8iD/Or2UwaN2EwSsOSgo=;
	b=IUUqSQvVSBqY52OpaC+CzmXAi7nzcxVSefANj3uTJAdXlc13bI7fgIjUogzASVu1be5Gdz
	xGytAgaJ2WX4RY4qyZFy/LIqWL4B+JenC3tOqK0qdEMkew78aIC8jT3Ss4bDWfxKZop1D8
	zUhyiFbE4Mm46YD82XlG7iC+spnj3so=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-596-TUm_UQDHNwOzjeLbiJAJQg-1; Sun, 26 Sep 2021 12:04:17 -0400
X-MC-Unique: TUm_UQDHNwOzjeLbiJAJQg-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9950793D;
	Sun, 26 Sep 2021 16:04:12 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id AC1B05C1B4;
	Sun, 26 Sep 2021 16:04:10 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id B874A1809C84;
	Sun, 26 Sep 2021 16:04:03 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 18QG3jvG004728 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 26 Sep 2021 12:03:45 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 49E7E2023A0D; Sun, 26 Sep 2021 16:03:45 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 454ED2023A0C
	for <blinux-list@redhat.com>; Sun, 26 Sep 2021 16:03:42 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 92C65858EEC
	for <blinux-list@redhat.com>; Sun, 26 Sep 2021 16:03:42 +0000 (UTC)
Received: from mail-qt1-f174.google.com (mail-qt1-f174.google.com
	[209.85.160.174]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-247-2CwKq1jmNy-3jBqXrkxtIg-1; Sun, 26 Sep 2021 12:03:40 -0400
X-MC-Unique: 2CwKq1jmNy-3jBqXrkxtIg-1
Received: by mail-qt1-f174.google.com with SMTP id m26so2944396qtn.1
	for <blinux-list@redhat.com>; Sun, 26 Sep 2021 09:03:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=r8WzvlLxv5w6wso9WTQGdZ/SvNHmId2qoc6AnwoTw5Y=;
	b=dXb3uyOYFBI4Lf/HUiBQ4t2WfATODemFkHlo9EHutuR7lRDekonD16I2D+25I1f0DM
	0+so5y6v4RnvKDNzI1CGPMIbdvKUHZ50ptI3w5vVCFZoKcJvAKylTOdCu5aUNpzmR8cq
	DgYlHdc5ZuU96IbGx6wvMkU11iDeAuE+s5/T/Bj0Oppq5TARuQcOlVmaVg1Av0JqbigY
	d11vvEvgc4wY4aAK07d+/rUi5diD4elOINUX6dh64nn6Sj4deOSnM7RqfDUG237Uc9JW
	QCG26a5DiYvIN9g6thjsjLJ+JefWRN1DJWIx8+PW052cYnYObxygt2X3TfeX09DJcHIv
	4Arg==
X-Gm-Message-State: AOAM53105IWrs36LdeOjxye8EyGsw7+8qpdSS1DXwkq31QTvRLsxm3Sf
	7XV6ZAG+isgVgHQ8XMQdFG9T8DlIB9o=
X-Google-Smtp-Source: ABdhPJzNKYmcLX4Uue5OvnjVPyCuVesWfyCGB69+JRGt+YF7NNhCKx3xY8bnpBN5pHiuc8BcCiecKw==
X-Received: by 2002:ac8:7d8b:: with SMTP id c11mr14547484qtd.45.1632672219948; 
	Sun, 26 Sep 2021 09:03:39 -0700 (PDT)
Received: from ?IPV6:2603:6080:6304:450a::960?
	(2603-6080-6304-450a-0000-0000-0000-0960.res6.spectrum.com.
	[2603:6080:6304:450a::960])
	by smtp.gmail.com with ESMTPSA id v1sm6719666qkv.37.2021.09.26.09.03.39
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sun, 26 Sep 2021 09:03:39 -0700 (PDT)
Message-ID: <9a791ec1-7fa1-7544-648c-85ca1eed8c77@gmail.com>
Date: Sun, 26 Sep 2021 12:03:38 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.1.0
Subject: Re: Did Mate change the Brisk menu?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <3dda2919-2447-9f48-21ed-49c832ce4ff7@gmail.com>
	<e07cd8e4-5326-2d85-1cc6-997cacc80504@gmail.com>
	<6dd08e29-01a1-b179-c305-515772fe849d@gmail.com>
	<2e992e3c-9317-825e-b70a-24e3b35f1e63@gmail.com>
In-Reply-To: <2e992e3c-9317-825e-b70a-24e3b35f1e63@gmail.com>
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
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Oh I see it. I still have it working here after yesterday's install and 
update. This one may be even better than the Advanced MATE Menu I just 
found on my list of panel applets on my Fedora host. If yours is 
missing, it seems it may have been inadvertently removed from your 
bottom panel. If you have a mouse or trackball connected to your 
machine, you can turn on Orca's "speak object under mouse" checkbox and 
run it down to the bottom left corner of your screen. I have a button 
right there that says "menu toggle button not pressed." That's the Brisk 
menu. If you don't have it, right click and select add to panel. The 
Brisk menu should be in the list of applets you can add there. Now I 
need to try to get it on the host machine. That's a good one.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

