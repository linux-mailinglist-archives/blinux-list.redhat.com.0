Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id 48C47284C9B
	for <lists+blinux-list@lfdr.de>; Tue,  6 Oct 2020 15:37:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1601991433;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=2P7fMiHI+nkR1gJhCwPkO3qSfLoWqdYRGXsIYsGQJYU=;
	b=igHw366IfNlHEFQSeSXDf7MqUH2Y/EiTYzOk3z4CPX+35ULfvW/IaDcITkblkhhqFdcGSt
	dbH0Mkm0R+EjW313YfeRM3NgIrxguT+1o2Uxd9rg6eE5qjCEkPK+ZHHBCjPVwHlw21ifwn
	JT/f96/+kNOca7L0mZDXw85rZAc0rnI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-158-LlHRu557Oim1XPYT1TPnyA-1; Tue, 06 Oct 2020 09:37:11 -0400
X-MC-Unique: LlHRu557Oim1XPYT1TPnyA-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 73E31804015;
	Tue,  6 Oct 2020 13:37:07 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2DAF038A;
	Tue,  6 Oct 2020 13:37:07 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id AC20A1832FC1;
	Tue,  6 Oct 2020 13:37:05 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 096Db1KK002877 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 6 Oct 2020 09:37:01 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 77CD010064E1; Tue,  6 Oct 2020 13:37:01 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 718B210064F2
	for <blinux-list@redhat.com>; Tue,  6 Oct 2020 13:36:56 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A808F102F1E7
	for <blinux-list@redhat.com>; Tue,  6 Oct 2020 13:36:56 +0000 (UTC)
Received: from mail-qk1-f171.google.com (mail-qk1-f171.google.com
	[209.85.222.171]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-360-qrNTQH5kMwWG8cUjidJyNw-1; Tue, 06 Oct 2020 09:36:54 -0400
X-MC-Unique: qrNTQH5kMwWG8cUjidJyNw-1
Received: by mail-qk1-f171.google.com with SMTP id s4so2330163qkf.7
	for <blinux-list@redhat.com>; Tue, 06 Oct 2020 06:36:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=vO6anNhs10oXBXmZG8hDHuqOyp48fe9tiqHcTeQJbdU=;
	b=EUgHUQdt4At9SOriZ4bPOXmw4K7PHFZ/82/3PvZ6lpnE1kIh1Kw7a8n8pV8XQ+42Cy
	bvhphsbQV2nSn3aG7xKkNtkHmOZ3aZlGnWhN7eVBcHrcmp3OUE4H7wOrpzrJqhQ/iSXc
	hsY2Z0R+fJ7iHuIDYLgmIv7jX3UsuWMI89w1soeT3kztSiraNt0NCLsjNj1g7nmtw6WE
	skQfCUtFWhKiRMv36U8YxAWBRAoFT7gwGwondvpf/d9w4siQvw41dwhLTuJzGbNNIrmj
	XGSe/qjkRjtFadSuW30vk84ASiIhTG0WrRN3YWnHQM/RbLB+33Lsj5K192TI2s0KLHiN
	OfOA==
X-Gm-Message-State: AOAM530flaNbZSDWOTCEC67b5fUjI+kKep3bVrXY0TcYh6ICjF+yXWpt
	fd8w5BS5M0xhgJ28DzqaXu00RNpWlLFOcA==
X-Google-Smtp-Source: ABdhPJwQxC9xrmtquB/1XZBq9Twv9A3TTlodDsVTDtifhQ/PZSc+zvUa95shYec5UgIT1vO8oBSo5Q==
X-Received: by 2002:a37:9e87:: with SMTP id h129mr5296569qke.276.1601991413555;
	Tue, 06 Oct 2020 06:36:53 -0700 (PDT)
Received: from ?IPv6:2606:a000:111a:8d0a::5d7?
	(2606-a000-111a-8d0a-0000-0000-0000-05d7.inf6.spectrum.com.
	[2606:a000:111a:8d0a::5d7]) by smtp.gmail.com with ESMTPSA id
	g203sm2518722qkb.51.2020.10.06.06.36.52 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Tue, 06 Oct 2020 06:36:53 -0700 (PDT)
Subject: Re: VPN accessibility?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <160195898709.6.4515232516938989079.1173897@slmail.me>
Message-ID: <b84e2a71-99a9-1e39-8b6d-a505b80a9c58@gmail.com>
Date: Tue, 6 Oct 2020 09:36:51 -0400
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:68.0) Gecko/20100101
	Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <160195898709.6.4515232516938989079.1173897@slmail.me>
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

My advice would be never to trust a third-party VPN provider that wants 
your financial information. It's better to get a cheap VPS and run your 
own VPN on that. This way you are in full control of your VPN, and only 
you can see your logs, if you keep them at all. I've heard that 
Wireguard is one of the best VPN packages available for self-hosting, 
but I haven't tried it. OpenVPN isn't bad either. If this seems like too 
much hassle, then it would still be better to find someone who can set 
it up for you and then just change your passwords or something so that 
no one can gain access to your server or your VPN. Call me paranoid, but 
I just can't trust any company that says they want to keep me save 
online, but they hold my banking info on their servers and I can't see 
the logs they keep.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

