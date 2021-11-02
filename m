Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id D83EE4438C3
	for <lists+blinux-list@lfdr.de>; Tue,  2 Nov 2021 23:52:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1635893543;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=pD1Le32YU9wg3k38wnoGrGn4teHnJHC4qzGgXpkkS60=;
	b=IsGLFpJYjTGHebEkBOh81lY7x9zC0kzBmCtz0eWQD+//qsFx8y6uDepEdgyaU0b4VmK7yb
	aSUWiBAB46wTP3cD/wqF1EbIYaCii7nKpY6MXmpE3MgSOmw2klI366w37JryUcgWxzvX9s
	KnyzLMHZLOVqwUUCW0XByK05UF//v64=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-70-ZSroz0d4OS2I2xs4rsagng-1; Tue, 02 Nov 2021 18:52:22 -0400
X-MC-Unique: ZSroz0d4OS2I2xs4rsagng-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8F88780A5C5;
	Tue,  2 Nov 2021 22:52:17 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id AE89C5C1B4;
	Tue,  2 Nov 2021 22:52:16 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 6D4491800FDD;
	Tue,  2 Nov 2021 22:52:05 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1A2Mpu5T007220 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 2 Nov 2021 18:51:56 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id B08B251EF; Tue,  2 Nov 2021 22:51:56 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id AAE5351E1
	for <blinux-list@redhat.com>; Tue,  2 Nov 2021 22:51:52 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D227B188129E
	for <blinux-list@redhat.com>; Tue,  2 Nov 2021 22:51:52 +0000 (UTC)
Received: from mail-pf1-f170.google.com (mail-pf1-f170.google.com
	[209.85.210.170]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-595-XqMnO-veMzK9Cx2UMN-RWw-1; Tue, 02 Nov 2021 18:51:51 -0400
X-MC-Unique: XqMnO-veMzK9Cx2UMN-RWw-1
Received: by mail-pf1-f170.google.com with SMTP id s5so437700pfg.2
	for <blinux-list@redhat.com>; Tue, 02 Nov 2021 15:51:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding:content-language;
	bh=PdAS92boUfsx8rAB72oCsD9s6mi0C9BifHckcmmyJuw=;
	b=iZfPSuE72t6BiJa9HywRwURaOO3FZ5rpKRjQCNZNKKQ9bFbjHQlh4UzvAfgO3a0gWV
	yVqeyDVuNJeDnIFHYRBVHOsZcWw8ydEmt3J+8kv5jLXSGOOTRoqDSgn5KtT2mBaeRRVe
	lzIsWTriu8yEo20mEf8VcQ3mjLqV3DwyV8PbmvmH9/rax6hjeqraZlPJeduQUcl11Fvl
	2z8CZUXZijLCIcFm1OItNuchM+KQr50UjjFanmztncTVV+Ni+zGp0dO+eTh8HvEf1Zyn
	6L2I6yAJUbFPpiQxlK33U1HxwyJ/Kf5xwa6r4OLEul2rQEXeZd6SaZljg+oGkVjBnNWo
	7Uwg==
X-Gm-Message-State: AOAM530dmnaydHyeAqJIjbINOxcvoBvkeJYzgY6Ibej0Xa5qAYR2N34l
	wQmcRAJUeTNnbym6Yxl4xa1s/U87cnoj0g==
X-Google-Smtp-Source: ABdhPJz1PvxiTWhyUUct07df7QMrZSxXUeGq40a4SPspnRzaPo2Ah3xZjanfRC/n7IxKGxoQYSKYwA==
X-Received: by 2002:a05:6a00:10d1:b0:47b:aa9b:1e7a with SMTP id
	d17-20020a056a0010d100b0047baa9b1e7amr39468291pfu.57.1635893509791;
	Tue, 02 Nov 2021 15:51:49 -0700 (PDT)
Received: from [192.168.1.103] ([103.121.18.19])
	by smtp.gmail.com with ESMTPSA id j6sm131393pgq.0.2021.11.02.15.51.48
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Tue, 02 Nov 2021 15:51:49 -0700 (PDT)
To: blinux-list@redhat.com
Subject: Skipping disk erase on Debian text-based installation
Message-ID: <70643642-dc6d-b2d1-f4b7-b92401241f86@gmail.com>
Date: Wed, 3 Nov 2021 05:51:47 +0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.14.0
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
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

Hi all,


I wonder if we can avoid disk erase process during debian text-based 
installation?

This process can take hours and it can be skipped on GUI based 
installation. Unfortunately it is not accessible :)


Regards

-- 
Edhoari Setiyoso

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

