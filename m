Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	by mail.lfdr.de (Postfix) with ESMTP id 4E1F61F054C
	for <lists+blinux-list@lfdr.de>; Sat,  6 Jun 2020 08:04:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1591423446;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=U7mP/Pqw7lYyDPXZShunO5gEZ1rj+K1B5NWsoWkZ7HA=;
	b=VG2ghap6Ty0j0vB54qHZK2Z4MkINoNO6qDlcCZKoRJiXXEDhelzfYDuUwltuvbzXfRTRUH
	MiFWdbANg1PLVPfXGT1kjtwkNZO9Iyzj0YRsU9EEVyKfecAh71u7JuczjoWQ18xK9DAhUB
	cWAIH02oGksFWOt6J8MsxGPIkGKkBzE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-493-VmfPQ1XINiWdI5Fnbkb2Qg-1; Sat, 06 Jun 2020 02:04:02 -0400
X-MC-Unique: VmfPQ1XINiWdI5Fnbkb2Qg-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A1A87461;
	Sat,  6 Jun 2020 06:03:58 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9C34E60BEC;
	Sat,  6 Jun 2020 06:03:55 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id D84AD1809547;
	Sat,  6 Jun 2020 06:03:50 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 05663geo020189 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 6 Jun 2020 02:03:42 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 3C87F2166B28; Sat,  6 Jun 2020 06:03:42 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 385062166B27
	for <blinux-list@redhat.com>; Sat,  6 Jun 2020 06:03:39 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A2383101A525
	for <blinux-list@redhat.com>; Sat,  6 Jun 2020 06:03:39 +0000 (UTC)
Received: from mail-qk1-f174.google.com (mail-qk1-f174.google.com
	[209.85.222.174]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-451-syBbnZH1PyK0wz4SM6uW2w-1; Sat, 06 Jun 2020 02:03:37 -0400
X-MC-Unique: syBbnZH1PyK0wz4SM6uW2w-1
Received: by mail-qk1-f174.google.com with SMTP id v79so12061876qkb.10
	for <blinux-list@redhat.com>; Fri, 05 Jun 2020 23:03:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=V4JHy5dvGXj3qHSOkyrOfpYET4UnQGC+P8s05L0MYoc=;
	b=bIQyKMsz6TBA0qA9QsfuwPQayXblYDC4KIK673HIVN7AJTqix68D+iCEY/s9SoPfs5
	pouxA5Uy+8wUfid17SY3axtPVx5oQSBBAMjZYM8+KLKeXNY0wsepi1MPRuw9hP+5xw7H
	kq9EfdGqh0ZjY9tuCMzk441D4+w9N1NNWDwQ0VdtUqlFaCOuKPyfcdC54ArwKwSYprfC
	M5j+pghLubzxu4c52O61AeAv4Svqi5o8F5NISzYboCHFA9fP+pl1SP6BIN2lyz3txjAJ
	UjxsI3arJly+evXRU+5TWYiZJ4TkxwDFGiX2jsqxBO5dGKTklmfFtHC7UBwQzN6D+RJT
	B0nA==
X-Gm-Message-State: AOAM531TJc7K2LYieN543MCRHxSyrekO9Wqaec3i80Mdcj8ZIwxaKGI3
	fFuS6oC9QT+QCFQ5JoN2lFakkL6/Anw=
X-Google-Smtp-Source: ABdhPJwxBc79c0Nh+i0RJl+fqvZvbxdN/IOHy2GqSafSdgAFQbaykH1MdO79aWsLGcWk416kSojEOQ==
X-Received: by 2002:a05:620a:126c:: with SMTP id
	b12mr13112090qkl.7.1591423416221; 
	Fri, 05 Jun 2020 23:03:36 -0700 (PDT)
Received: from ?IPv6:2606:a000:111a:8d0a::241?
	(2606-a000-111a-8d0a-0000-0000-0000-0241.inf6.spectrum.com.
	[2606:a000:111a:8d0a::241]) by smtp.gmail.com with ESMTPSA id
	g64sm1824441qtd.39.2020.06.05.23.03.34 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Fri, 05 Jun 2020 23:03:35 -0700 (PDT)
Subject: Re: Tiling WM with Orca, anyone?
To: blinux-list@redhat.com
References: <19fe1f20-9bc7-9fc7-6702-a34021279d54@gmail.com>
	<AD0DEA51-255F-48CB-A427-C861671A73CC@gmail.com>
	<016a01d63b65$ff8d8a10$fea89e30$@GMAIL.COM>
Message-ID: <71f8bb6d-dbfe-508d-365e-d248e9eacf1e@gmail.com>
Date: Sat, 6 Jun 2020 02:03:33 -0400
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:68.0) Gecko/20100101
	Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <016a01d63b65$ff8d8a10$fea89e30$@GMAIL.COM>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit

Arch with MATE does run on pretty much any 64-bit system. There are ways 
to lighten the load so that it will run better, but still keep necessary 
things that make it easier to use.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

