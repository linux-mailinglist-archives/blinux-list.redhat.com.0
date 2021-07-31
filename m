Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id D0CDB3DC28B
	for <lists+blinux-list@lfdr.de>; Sat, 31 Jul 2021 03:55:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1627696525;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=bW4XqOvy/Rztx+ZdSQWos+5dhwAXZp8Iw3c1E0e5f2Q=;
	b=VZ3pHWWl4nJihAaI6l/jSdSOJ1dmE/TTmGb9bCKlGObLLR3I8tq0ZYbUxVHY2zbIpPYkFz
	546IKzPPQHzN/B5sJF3EVtt3CXZc1hZcGjYTbt0iSHtpEdxkBJT84GMPaqFt1QRj6pj3Si
	dfrIbxXSyJKoZdLNYok0LQHIyb7uLG0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-350-3vebTCy1Nuah4XdKR_Xgqw-1; Fri, 30 Jul 2021 21:55:23 -0400
X-MC-Unique: 3vebTCy1Nuah4XdKR_Xgqw-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 44AD9107ACF5;
	Sat, 31 Jul 2021 01:55:20 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 75BB75D9D5;
	Sat, 31 Jul 2021 01:55:19 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 9EB87180BAB1;
	Sat, 31 Jul 2021 01:55:18 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16V1sFqD016338 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 30 Jul 2021 21:54:15 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 808EE20877DC; Sat, 31 Jul 2021 01:54:15 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7BE3120877D3
	for <blinux-list@redhat.com>; Sat, 31 Jul 2021 01:54:12 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 286B8866DF8
	for <blinux-list@redhat.com>; Sat, 31 Jul 2021 01:54:12 +0000 (UTC)
Received: from mail-qv1-f51.google.com (mail-qv1-f51.google.com
	[209.85.219.51]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-576-Zxms3N-9O6qBD1KjBtB6kw-1; Fri, 30 Jul 2021 21:54:10 -0400
X-MC-Unique: Zxms3N-9O6qBD1KjBtB6kw-1
Received: by mail-qv1-f51.google.com with SMTP id js7so3622571qvb.4
	for <blinux-list@redhat.com>; Fri, 30 Jul 2021 18:54:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=QLyWd20fomuXyQ+nZaU9eg8OFiIC/eznHITeqMIcveM=;
	b=amiIdpljtB4bEYG+FJ47/CiSUCMlEAujQFyX93nwzIDpOgXcruz5M7x5f+sJbHhDk0
	dUwBp8ClyZK8vn0+cWIbG0v8ftH8f5uPTUwPBYAImPSyJh3/l9cnyal0n13qeUzMO8su
	vZf46tAcJm5JhMLS94886M83xrwTH9k0gPpCaIMBnU976g4MFQ06YUM/jUWaB1hx/KL1
	7ms9i91Rpcf5e7CYCuqyg3/0u1MPlR0tUQK6Kwt5buzVLuonnl3cD9lKebTe2bolMu6h
	ULEN0MgfdLriMs4HC+IvYmktPwvpeaPLMP9/ujcI/pyoawBdl27tliEWzcni9efUMpNP
	PVBA==
X-Gm-Message-State: AOAM532QFnak+tuMujfGRXEPwmtOXKNN6f0x9OGtK3xN4F6/AYibHZPH
	3MYkqHE+AlRUiIu6RiMb8KJODF9mc4Y=
X-Google-Smtp-Source: ABdhPJwtSJv+/pld8rV0ueDempcEEAyjgVGvnhMy1TuBFRp77CS5WXylxKYisLk9MDKT0/WrLyZIrA==
X-Received: by 2002:ad4:55d0:: with SMTP id bt16mr5563827qvb.49.1627696449378; 
	Fri, 30 Jul 2021 18:54:09 -0700 (PDT)
Received: from ?IPv6:2603:6080:6304:450a::433?
	(2603-6080-6304-450a-0000-0000-0000-0433.res6.spectrum.com.
	[2603:6080:6304:450a::433]) by smtp.gmail.com with ESMTPSA id
	k15sm1922775qko.84.2021.07.30.18.54.08 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Fri, 30 Jul 2021 18:54:09 -0700 (PDT)
Subject: Re: Solus and Broken Speech
To: blinux-list@redhat.com
References: <6fbf8e0f-bfb0-92ea-8b0b-7e271cb3a4a1@gmail.com>
	<alpine.NEB.2.23.451.2107302039530.29234@panix1.panix.com>
	<a329141f-64a6-e2a2-1c8e-b16e5d108cad@gmail.com>
	<c88d0cb6-3429-f482-6de3-2bd6262b9967@gmail.com>
	<977e443f-189c-849c-eb13-842d6b036500@gmail.com>
Message-ID: <b8c423b9-0d48-8b71-26c9-ddcc752d80ad@gmail.com>
Date: Fri, 30 Jul 2021 21:54:07 -0400
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:78.0) Gecko/20100101
	Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <977e443f-189c-849c-eb13-842d6b036500@gmail.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Yes. If Pipewire is installed, pulseaudio would be a symlink. Try 
running file like so:

file /usr/bin/pulseaucio

This should tell you exactly what you're dealing with. It does appear 
you will want to change your AudioOutputMethod to "alsa" in 
/etc/speech-dispatcher/speechd.conf. That will be the easiest way to 
solve the choppy speech problem I think.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

