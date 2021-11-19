Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D8FF457867
	for <lists+blinux-list@lfdr.de>; Fri, 19 Nov 2021 22:54:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637358865;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Ef/dajecSfvIl526NctuM0avMPHrvVkixRPWSwukV0o=;
	b=FFELYyBei0ExOSvs21fXpTPinctAJMnKZue5MESXyr3MNcumOOVKSmVlr8URZdJy/0qurQ
	15QlPTJgUYcNDL97HkQT8L1YaCtgaWUqUIL9oFlx6TU3vEsEJvMtSUIM9/Q4rWg8ZYNLuS
	kYQLRddbx96RJjQQPOlaNiiF9sy6Yhc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-20-neoBD6bIOvO6NBpLmiS7uw-1; Fri, 19 Nov 2021 16:54:23 -0500
X-MC-Unique: neoBD6bIOvO6NBpLmiS7uw-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 54FDC8799E0;
	Fri, 19 Nov 2021 21:54:20 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 18B74100EA05;
	Fri, 19 Nov 2021 21:54:20 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id E1E101832E80;
	Fri, 19 Nov 2021 21:54:17 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AJLs2uB021421 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 19 Nov 2021 16:54:02 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 676031121318; Fri, 19 Nov 2021 21:54:02 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 623E01121315
	for <blinux-list@redhat.com>; Fri, 19 Nov 2021 21:53:59 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 97E2C811E76
	for <blinux-list@redhat.com>; Fri, 19 Nov 2021 21:53:59 +0000 (UTC)
Received: from mail-qk1-f178.google.com (mail-qk1-f178.google.com
	[209.85.222.178]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-16-mRrG8GYeNleQEz0lKERKlA-1; Fri, 19 Nov 2021 16:53:58 -0500
X-MC-Unique: mRrG8GYeNleQEz0lKERKlA-1
Received: by mail-qk1-f178.google.com with SMTP id i9so11654464qki.3
	for <blinux-list@redhat.com>; Fri, 19 Nov 2021 13:53:58 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=vuIuqN8+0bNHQSqQbpO1efnYXddNnh5b1C1+RCICL/A=;
	b=tijKoJsZv+wn3gobsiUAjmVfa15xR4v0VCli1LP47tA6523MutBa0jgD92Z+BVj6fv
	kTJ9EaLqDNO3sLn1S3bbMiiWi25yRSWIBcTGzdroU2aqdNH92917g8n9oc25E2G7JL5m
	0Z2ddGTiVY2CJreEaR2tbLmurr/PPbFgOnbAXIP2jlWwJPDujddNAe93y5dd/n0HdKk7
	40XFQSIF7h8L8DZZG5MratNukBm6SuHe98KfotGROBrxLGanClsCcOFaaJFkWPXe8i/2
	/Mj16aKfoEIoa5nzk/AbWVE37O0Nv2bOG8g9M/ef8HToXK/QmHWERPTci0zijJpDAxxz
	qQJQ==
X-Gm-Message-State: AOAM532onugdeU39a0mSIvPIWorItTIjxL38RpQi+xAGWUIJ3Uq2odIF
	wON2jQhz6KodW/gT3dHq9tA/0bGahzU=
X-Google-Smtp-Source: ABdhPJzp34ZI081ZjeFu+Yh+rFeZVtf5HY8AZAok6Am6JrONcOzFHZFTu4yuUWzjFneK++MMH2/Tdg==
X-Received: by 2002:ae9:e905:: with SMTP id x5mr30601875qkf.468.1637358837595; 
	Fri, 19 Nov 2021 13:53:57 -0800 (PST)
Received: from ?IPv6:2603:6080:6304:450a::960?
	(2603-6080-6304-450a-0000-0000-0000-0960.res6.spectrum.com.
	[2603:6080:6304:450a::960]) by smtp.gmail.com with ESMTPSA id
	x13sm551001qkp.102.2021.11.19.13.53.57 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Fri, 19 Nov 2021 13:53:57 -0800 (PST)
Subject: Re: looking for Lennix distribution?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <c28c932c-ef31-339c-ab9f-b875fab8d259@hubert-humphrey.com>
	<a257cb5e-685f-1c7a-b41a-16e42fa74511@gmail.com>
	<8a5e7b3d-2d54-c13f-659f-bd10b23de2b1@hubert-humphrey.com>
	<02c78924-8760-4e5e-d58a-787766c60325@gmail.com>
	<aab6690b-f55f-80d5-2b1f-dfc3aa7f1272@icloud.com>
	<779a43bb-fe1c-6d4a-a7e2-31532308d709@gmail.com>
	<C397260A-A8B2-4479-A3F5-6547EA4A1D8F@icloud.com>
	<fd55f0f8-262a-df02-b0cc-09a61ad3f5ee@googlemail.com>
	<e7a5e2a8-ae3d-296f-c910-acc0df8d2d92@gmail.com>
	<c78786a7-1243-3287-6f72-bd85f8d7474c@gmail.com>
	<9969beee-025b-3a64-dbd6-ab203bf6e060@gmail.com>
	<7c611c4e-d855-047f-3784-04382c6613d5@gmail.com>
Message-ID: <fc822abc-4ee9-89fb-2c6e-b61477e0b8ae@gmail.com>
Date: Fri, 19 Nov 2021 16:53:56 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.0
MIME-Version: 1.0
In-Reply-To: <7c611c4e-d855-047f-3784-04382c6613d5@gmail.com>
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

The bootloader checkbox is in the disk configuration. I'll have to look at it 
again to be sure, but if I remember correctly, it's in the window that pops up 
when you select the disk where you're installing the OS. Actually, I think it's 
a button or some such that says "do not install bootloader," but again, I'll 
have to look at it again. I do know there is a way to keep it from installing 
the bootloader, as well as a way to install to a different disk. By default, it 
installs to the system internal drive, which you do not want.
~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

