Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id B5F942A8B30
	for <lists+blinux-list@lfdr.de>; Fri,  6 Nov 2020 01:14:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1604621688;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=I5JIeGV4JTVLi6vBIKQeI/ZFFyi9vbXpWSv05t/0swM=;
	b=J2qP/7DsKeqIiTAJNx8fFjLvhQlYG87OelxQFDvE0a/QYsuWpF55oP8StmCGwPO+re8zsy
	HPa/8hU/Ihz6xYkfs3XP5X9PHo2eHIBRdKL9DK7giUh+AjYhdWMycoDY4A6FHwaO7CnKPS
	84f+EvPw9B8VAAPGN0OvHK7g/+I3RY0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-247-9uFzAURWPfGzvs5yFXpeIg-1; Thu, 05 Nov 2020 19:14:45 -0500
X-MC-Unique: 9uFzAURWPfGzvs5yFXpeIg-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8EACC804B7D;
	Fri,  6 Nov 2020 00:14:40 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C14325C893;
	Fri,  6 Nov 2020 00:14:39 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 32DC0180B658;
	Fri,  6 Nov 2020 00:14:38 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 0A60EF0N020704 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 5 Nov 2020 19:14:15 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 87B4D1175404; Fri,  6 Nov 2020 00:14:15 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 836DF11753FC
	for <blinux-list@redhat.com>; Fri,  6 Nov 2020 00:14:13 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 3816E8007D9
	for <blinux-list@redhat.com>; Fri,  6 Nov 2020 00:14:13 +0000 (UTC)
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com
	[209.85.221.52]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-99-PuW0OyKzMjmj_dvJEiKhoA-1; Thu, 05 Nov 2020 19:14:11 -0500
X-MC-Unique: PuW0OyKzMjmj_dvJEiKhoA-1
Received: by mail-wr1-f52.google.com with SMTP id e6so3750529wro.1
	for <blinux-list@redhat.com>; Thu, 05 Nov 2020 16:14:11 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=J2LLjV4YPpZPwWEx3TujPec0E2YByGZwoB6KQTCf9MM=;
	b=gmiiEWlIIdrvG0yJvfB3pA8aUcdEDBUZmhz+8CqV/hzwynS7u6VUmRfP+PQuDdvw+n
	gkLv0iz8j5BaoRr/vHyOTXTtMZd7dC2Mpjeqii08noxh7epTjZCsdzmUY5KADs/4cLrA
	ziyAtgZdz6BqydH1vZIW7R68gmz38+qqVL3ByDZROvtvaVD6cjhIpJr5rNxCpeVHAJ5h
	CtXdWHj77H5nqo37YJOantm5diZm9NuMw6hTr9qWMnQ2hZAculmmuy06lUheDjqsN5X4
	R5X5G/KKdx8P1NcttRf6s4S3jgiNjjxIuST8+9Ah6RHr++AJTuwqqo3TPTy8xq6CbVll
	A25w==
X-Gm-Message-State: AOAM5311lHV5F8T16qkY9AnTJ+E5K2LZBL784wEdRpYk4KN2qFOl/vsV
	3yhimUGrF4Y31QMloJfyhqilPl9HrWsZNw==
X-Google-Smtp-Source: ABdhPJy42F6uIUxB+MupzgPm9zmeU3v/md2BypVAkiGtdGf+lQZjeAgLiCDJyxfHgAaX5aK43S0X9w==
X-Received: by 2002:a5d:5752:: with SMTP id q18mr5509107wrw.176.1604621650094; 
	Thu, 05 Nov 2020 16:14:10 -0800 (PST)
Received: from ?IPv6:2603:6080:6304:450a::433?
	(2603-6080-6304-450a-0000-0000-0000-0433.res6.spectrum.com.
	[2603:6080:6304:450a::433]) by smtp.gmail.com with ESMTPSA id
	d20sm5300541wra.38.2020.11.05.16.14.09 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Thu, 05 Nov 2020 16:14:09 -0800 (PST)
Subject: Re: arch linux and broadcom
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <00B86B11-5D22-4EAA-A7DC-FF8194FBD424@gmail.com>
	<cfc665bf-d6f8-3866-2ccb-94c3ee2a52db@gmail.com>
	<6B4DDB3E-A5E2-47BB-A364-B34A3E8D7A91@gmail.com>
	<25d5c276-94a5-ad3a-c521-4b25ecf87ef5@gmail.com>
	<3CA05D86-33B3-4781-A7E4-ABC3888B131E@gmail.com>
	<45711af3-5f7e-e420-b34e-48867e9f1e73@gmail.com>
	<81F35FE2-70DA-49E6-ADC9-3FBE0ECE0811@gmail.com>
	<b45ce6b8-b401-404c-618a-4ca60653e313@gmail.com>
	<DB0DA0B5-8B36-4A87-946C-5A199459B675@gmail.com>
	<9a624111-d302-090d-2de1-cf19db0d44ca@gmail.com>
	<eee49b61-350f-e13b-f18b-06914680b795@gmail.com>
	<34C421AB-100B-40A8-9E89-AF50983F4A41@gmail.com>
Message-ID: <d574e2c6-737f-738f-b65a-c1324db5ab51@gmail.com>
Date: Thu, 5 Nov 2020 19:14:06 -0500
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:68.0) Gecko/20100101
	Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <34C421AB-100B-40A8-9E89-AF50983F4A41@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

The symbol you used is fine. It only becomes a problem if you want a new 
file and pipe out to an existing file using it, because it will add to 
the file. But as long as your file doesn't exist, you will be fine to 
use the >> pipe. | is only for piping output from one program into 
another.~Kyle


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

