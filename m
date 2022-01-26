Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 5078E49D590
	for <lists+blinux-list@lfdr.de>; Wed, 26 Jan 2022 23:39:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1643236745;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=7/as10NM+3oyicvmHux06JyrUluRmFcp//X9DtnrEhQ=;
	b=PadpQuK2rB5FgWZKLHZMansQdcj4F3vi1grIhLgrTws8Ky4/QIL1fNp2PxUlMkJO8mGlzQ
	nQAF/G7+aNjkKuhjRr/zjQSj4JZ/5kzW3ZuhMxsjjVeqNxLpSzYgfHlBwIbH2k9ED9Qa8o
	ixHv1fsVZI1LWGy+dLfH/b4tXr3edBA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-631-7gR_BiVSOniOCzOlXUOYOQ-1; Wed, 26 Jan 2022 17:39:01 -0500
X-MC-Unique: 7gR_BiVSOniOCzOlXUOYOQ-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1B5B481C9A6;
	Wed, 26 Jan 2022 22:38:58 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id EB33510424E5;
	Wed, 26 Jan 2022 22:38:57 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id BA8F04BB7C;
	Wed, 26 Jan 2022 22:38:57 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20QMcrRP032630 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 26 Jan 2022 17:38:53 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 9000540CFD35; Wed, 26 Jan 2022 22:38:53 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8B21A40CFD04
	for <blinux-list@redhat.com>; Wed, 26 Jan 2022 22:38:53 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 70DDB857BFF
	for <blinux-list@redhat.com>; Wed, 26 Jan 2022 22:38:53 +0000 (UTC)
Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com
	[209.85.160.181]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-449-u8qV5E3eO_CszLCVIipxqw-1; Wed, 26 Jan 2022 17:38:51 -0500
X-MC-Unique: u8qV5E3eO_CszLCVIipxqw-1
Received: by mail-qt1-f181.google.com with SMTP id o3so973773qtm.12
	for <blinux-list@redhat.com>; Wed, 26 Jan 2022 14:38:51 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=piwkD2oOktgUOSzwq+/b+q1LvAb/14EmeMgrGrfYU7o=;
	b=sMOEMdqI6+YpRl4IOBLw77ixcO4N/QtHrR0GwkhmTBJGftDx/E7diQ7GmOYxHAF3kj
	75cbLooBfA6eSes/jebtJkQRXnlmy1Rihz2JNPkydmbSWwHiBLE7ymEo5aLkJqJYEaO5
	5U6D6BPhFuBdSlTKplMvNqfJY7ipw5/5L5YIfSMvpB446J2hyDpUqiv6G1cra4jA9dhm
	g4KI5OSLhTE5xXO8GxC8UL6RQ18DbKOTGpFFRgwWThb+bt3ETCVVy9UlrvVgIhIpKztX
	m9yO5wPY/9v3gpuh1sOUciH/kzn7EpNX7E8BlkIxtmf8DYXZuEQsanjxm+JS14AsMDIj
	OXJQ==
X-Gm-Message-State: AOAM530vlGgY+XJei40o5av+Ge1Dw8R4uIUaD/Hb84Mp2iN0LK85SqsZ
	l1IIwdqBpxLFjgGLdOrRlMBq6BnKuNbcLg==
X-Google-Smtp-Source: ABdhPJw9PlihgqJgITipYeU3xGUzn2KKj93Wf5ED5aRXDTgoRD7kM7CFlkDzsN2azre3j9W+gWXM7Q==
X-Received: by 2002:ac8:5bce:: with SMTP id b14mr688590qtb.357.1643236731137; 
	Wed, 26 Jan 2022 14:38:51 -0800 (PST)
Received: from ?IPV6:2603:6080:6302:e002:e826:5227:4681:6e2d?
	(2603-6080-6302-e002-e826-5227-4681-6e2d.res6.spectrum.com.
	[2603:6080:6302:e002:e826:5227:4681:6e2d])
	by smtp.gmail.com with ESMTPSA id v21sm344807qtx.13.2022.01.26.14.38.50
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Wed, 26 Jan 2022 14:38:50 -0800 (PST)
Message-ID: <0c0e770c-c2d5-f370-ac4f-973e7074089d@gmail.com>
Date: Wed, 26 Jan 2022 17:38:50 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.5.0
Subject: Re: Converting text to mp3
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <a8157072-a0db-10e0-0f8a-08bff05d9aef@seznam.cz>
	<YfGDHwxeIwHdYMsg@panix.com>
	<d1fa3e3c-9c3a-e3a3-6f40-febf93e94c46@seznam.cz>
	<20220126124056.239f2e2f@bigbox.attlocal.net>
	<CAO2sX33vHD5OWH3gN-pQ1HThebwFCrvGUTFdXf4rTi19e2NOWQ@mail.gmail.com>
	<cf56de9a-9035-bbe0-ef8c-1e9e6468e8c@hubert-humphrey.com>
	<Pine.LNX.4.64.2201261620360.2109039@server2.shellworld.net>
	<571c96f3-44ae-eba3-bff9-39d1449e61d3@hubert-humphrey.com>
	<Pine.LNX.4.64.2201261646080.2109442@server2.shellworld.net>
	<cfcd28b0-26c2-77b8-fca9-b8a99955c092@gmail.com>
	<Pine.LNX.4.64.2201261716150.2109950@server2.shellworld.net>
	<1965ab38-c72f-9e43-1c14-4c4dcdb0ef23@hubert-humphrey.com>
In-Reply-To: <1965ab38-c72f-9e43-1c14-4c4dcdb0ef23@hubert-humphrey.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.1
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
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Sounds like a library is out of date maybe. I really can't say. I know 
it is working here ... I see no errors. Maybe try pip installing it, 
which would pull in newer versions of its dependent library code as 
well. I know it's Python, but I'm not sure what its pip name is. You can 
try gtts first, and then if that doesn't work, you could try python-gtts.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

