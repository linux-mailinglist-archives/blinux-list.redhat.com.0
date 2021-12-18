Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EBD1479B3C
	for <lists+blinux-list@lfdr.de>; Sat, 18 Dec 2021 15:14:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1639836844;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=LSvkxWw46dGXuMgFd01gTEj69TFqYgQQwcTzFxT3WEg=;
	b=fFxvb8yBlzdI5e2w7dpObOWQnJTWNFXlkkHu7DAs1FWV3Y22PCxoziUbOL3PBC7eP5VXI4
	oBe9ENQa0ZkK+UDmla3wP3QiQ30mBq3UlekqEhfG8eyBjetWfwtLLVUnimq6F5Jo03LM1c
	d3RIjgKL4lUvazpAwXnp37FVSOrcadE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-510-8aHB1pdfMpqsLZ_BUT8XuA-1; Sat, 18 Dec 2021 09:14:01 -0500
X-MC-Unique: 8aHB1pdfMpqsLZ_BUT8XuA-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 037B9104ECE6;
	Sat, 18 Dec 2021 14:13:57 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2A0FD37FBD;
	Sat, 18 Dec 2021 14:13:51 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 55D2D4BB7B;
	Sat, 18 Dec 2021 14:13:42 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com
	[10.11.54.9])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1BIEDWvn031399 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 18 Dec 2021 09:13:32 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 838E0492D58; Sat, 18 Dec 2021 14:13:32 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7EB39492CA3
	for <blinux-list@redhat.com>; Sat, 18 Dec 2021 14:13:32 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 6377585A5A8
	for <blinux-list@redhat.com>; Sat, 18 Dec 2021 14:13:32 +0000 (UTC)
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com
	[209.85.221.41]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-465-c_Klgv-dP0GzRbe0-M2V5w-1; Sat, 18 Dec 2021 09:13:30 -0500
X-MC-Unique: c_Klgv-dP0GzRbe0-M2V5w-1
Received: by mail-wr1-f41.google.com with SMTP id s1so9705565wrg.1
	for <blinux-list@redhat.com>; Sat, 18 Dec 2021 06:13:30 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent
	:content-language:to:from:subject:content-transfer-encoding;
	bh=yRgQM/QVojQVdfaf/k+qEXK+RDCmyl1nQulKP4QHvQQ=;
	b=jQUkTjNhtRHwECdgf3HxBdFj8bebRi6zFW6xboi5Oj7rwBEHD8siG5UkQstRwGqhhw
	vZvnvDBBb2Fat/Sj+VxRygj18m3IMgZ4SzunKFMutKvTT7f0oOZE0biIwa3A5Xw9TAQ9
	wM1pYS0owkkCnTi3y5Yybz1xTj+majwCHHMUGyT15bLzBWMwGTwZqibRAWn4+AKIPVhn
	O/AWoPCCodMcaHuDYZu+Tc5OltJP0ydIuXk8CMqfOoQhG0LEaR4HonmY4TdtGCwyXCQS
	EcbB8DQCgu0mzNDkUY7QYGo7hwhtHOX+QFVQbmaEiUQ8mH35h8mRiKtVOTU3t/b3s261
	jlgw==
X-Gm-Message-State: AOAM532WdtCpWxjzdL0jeejuE7wkt8SMzChrARGAyzaykMERy4YXuUcG
	uVfw3pINO1QzpLqufUBYGobui7rCMXrMZw==
X-Google-Smtp-Source: ABdhPJyAq4U6MFo+J4GBVNkC/6Aq3KPgxfaJCIeJULn0qfXDXthPcj/ayRhntK3YCSoaeplTVz8rXw==
X-Received: by 2002:adf:ef46:: with SMTP id c6mr6562754wrp.555.1639836809067; 
	Sat, 18 Dec 2021 06:13:29 -0800 (PST)
Received: from [192.168.1.130] ([90.251.213.111])
	by smtp.gmail.com with ESMTPSA id
	m20sm14446023wmq.11.2021.12.18.06.13.28 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sat, 18 Dec 2021 06:13:28 -0800 (PST)
Message-ID: <b320bf55-86cf-a1ab-8eed-7a42963f9c7e@gmail.com>
Date: Sat, 18 Dec 2021 14:13:37 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.3.2
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Webmail vs client question
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.9
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

So this came to mind earlier, and I'm wondering if I can do anything 
about it, and it was prompted by an idea I had to save disk space.


I've read up on the difference with POP3 vs IMAP, and I like how 
Seamonkey/Thunderbird/Claws/etc handle mail in a much easier to read 
format than webmail interfaces.

But I'm wondering if there's a middle ground, if I can have a client 
that lets me access my mail, but doesn't clutter up my disk? I was told 
both POP3 and IMAP eat up disk space on a computer after all, and I'm 
both not sure how true that is, and wondering if I can do anything to 
mitigate that?

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

