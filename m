Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id BB4FA35B5F0
	for <lists+blinux-list@lfdr.de>; Sun, 11 Apr 2021 17:54:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1618156447;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=eP2PdpbcYwlYP1CskM+diYHc25DHHL5KOLyB6qA8bYo=;
	b=bq27GkVe0QargsTOvXUYHl6ASLbMMLrWAfVrmIDBdasdWKXk60OW+oh0CETu/otyZP9xE2
	j13njgvuogWPgQ699QL3Kw5eCacppoiebjZbLzdIf2NVCAR3ZYh96fgc6/Rz2mlF4/ewis
	gOXa+wvjSuzBqp7jf3WFiQpGW0++lwM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-495-FWb9-ZVoPFm0VYja8uCeyw-1; Sun, 11 Apr 2021 11:54:05 -0400
X-MC-Unique: FWb9-ZVoPFm0VYja8uCeyw-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1BCA410054F6;
	Sun, 11 Apr 2021 15:54:01 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E096C19C79;
	Sun, 11 Apr 2021 15:54:00 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 5C28644A5B;
	Sun, 11 Apr 2021 15:54:00 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 13BFpZGA005257 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 11 Apr 2021 11:51:35 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 1E0142021470; Sun, 11 Apr 2021 15:51:35 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 18004202146F
	for <blinux-list@redhat.com>; Sun, 11 Apr 2021 15:51:32 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 73D4F8032E6
	for <blinux-list@redhat.com>; Sun, 11 Apr 2021 15:51:32 +0000 (UTC)
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com
	[209.85.218.47]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-99-AcFlZyMrOKi0qoVAvcXxqw-1; Sun, 11 Apr 2021 11:51:30 -0400
X-MC-Unique: AcFlZyMrOKi0qoVAvcXxqw-1
Received: by mail-ej1-f47.google.com with SMTP id a7so16217764eju.1
	for <blinux-list@redhat.com>; Sun, 11 Apr 2021 08:51:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=0A6h2QMIhR1I+cg+rTLztd+zXiVPs0UUS0cQIcZ7au8=;
	b=B3apgQ0QRcPWnKhnU0SUvXqaMsc+a1yJPvu+CVe2Xa8VByb1ZE9Z4OSylatXN60o0M
	hCtKcd0kL0/CrnDX6DBI1q2wK1fL82IfndtqHS9DcB8aoa0btSzEInW5UY45GBMpyQZF
	yfpuKhANIxiHfKDl3xm9kTiOLl9VYmTwmSx4iOyjU+VLbSTjpMUFIFOBrQBOSo3IiCHL
	cWLP7eYZdnP2CfWf8tm0wmgVYCEN3umh6q77m4fBXyceSk8nIvqc5vueOGpr/lih9he2
	GeW76bvFFsEnf+BiCUkcnkJA5yfqaBeRZO6jvPWzKM4X+5vo/QHUBedLbvd9wGCrCGjh
	dwxg==
X-Gm-Message-State: AOAM530Yj4Tlt+4DEvl0yBVxX9Qx2mkRBDOPljHhROE1ldXxZgQoOTxk
	/YObvaDn/5dVzOU171vj07/MdJtWr1fBJw==
X-Google-Smtp-Source: ABdhPJyavE1kGDZrEh+vP/RJOF04bdN2hSfwtLmZ3f4qKC6faXZIF+Yb6n4Xh+6O6mD13DwAE0sOEw==
X-Received: by 2002:a17:907:76cb:: with SMTP id
	kf11mr815660ejc.472.1618156288017; 
	Sun, 11 Apr 2021 08:51:28 -0700 (PDT)
Received: from [192.168.1.8] (net-188-153-130-61.cust.vodafonedsl.it.
	[188.153.130.61]) by smtp.gmail.com with ESMTPSA id
	h15sm4196838ejs.72.2021.04.11.08.51.27 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sun, 11 Apr 2021 08:51:27 -0700 (PDT)
Subject: Re: Some questions about Arch Linux
To: blinux-list@redhat.com
References: <7b85da54-e7ac-7b50-0605-ad6c5456b58d@gmail.com>
	<93B89B1D-82D0-4A12-ABF6-5A20BA3EAB8D@gmail.com>
	<42cd71c0-6d7d-4f8b-f428-7a96f42af69e@gmail.com>
	<d109559a-d2c0-c375-255d-b4e4c1ffa0b8@gmail.com>
	<b8cfdbc2-3994-32fa-92d4-fe0a449c2aaf@gmail.com>
	<cf6145c6-1bb4-2815-494d-3be7cb796802@slint.fr>
	<cacbfbd8-ea7c-a750-2123-efca11ff4a2d@gmail.com>
	<010b3bd8-e54e-c789-892a-ffee375bf0e0@slint.fr>
Message-ID: <0ab7e788-4a8a-d18a-ff1f-a4efd1784997@gmail.com>
Date: Sun, 11 Apr 2021 17:51:45 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.9.0
MIME-Version: 1.0
In-Reply-To: <010b3bd8-e54e-c789-892a-ffee375bf0e0@slint.fr>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hello there,


Thanks for everything, I'll do.

Best regards.

Francisco

On 4/11/21 7:47 PM, Linux for blind general discussion wrote:
> Sorry, I don't use Arch and don't have the time to check.
>
> I suggest that you ask on IRC, server irc.linux-a11y.org, channel #a11y
>
> You can use irssi or pidgin to chat.
>
> Most people there use Arch, are blind and knowledgeable.
>
> Good luck.
>
> Didier

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

