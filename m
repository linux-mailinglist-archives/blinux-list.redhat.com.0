Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id E543F45DCB6
	for <lists+blinux-list@lfdr.de>; Thu, 25 Nov 2021 15:50:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637851844;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=REcVzjY2kbVdhz6TBSK3/6FNIMb9J88xw5Qdts737rU=;
	b=Wz5eCpr4XwJKXBnVUAw7p1+V4mTRF2bNoEl6VM90DFBl8YwNFnj7GK1Z8B/E4OOCXYg9sS
	7vnM6C4Arg608Vi52wv+HwCO5eQlZDj8gHNDKu13sZ6PfvvHO7yLQ3wTYNKQEaDFE/LeE9
	LNJ7v7tOu6I8gR+tqYL8C5nWKJW+lLY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-462-hn6nmGcdM5aX3yn9TrB7mg-1; Thu, 25 Nov 2021 09:50:40 -0500
X-MC-Unique: hn6nmGcdM5aX3yn9TrB7mg-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 281A918A0F27;
	Thu, 25 Nov 2021 14:50:34 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 06B2F1972E;
	Thu, 25 Nov 2021 14:50:33 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id B46514BB7B;
	Thu, 25 Nov 2021 14:50:26 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1APEoKUJ009721 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 25 Nov 2021 09:50:21 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 243FC400DFBC; Thu, 25 Nov 2021 14:50:20 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1F18540CFD01
	for <blinux-list@redhat.com>; Thu, 25 Nov 2021 14:50:20 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 043F480B70A
	for <blinux-list@redhat.com>; Thu, 25 Nov 2021 14:50:20 +0000 (UTC)
Received: from mail-qv1-f52.google.com (mail-qv1-f52.google.com
	[209.85.219.52]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-329-yV3V1W1oO_uzWlswgatgPw-1; Thu, 25 Nov 2021 09:50:18 -0500
X-MC-Unique: yV3V1W1oO_uzWlswgatgPw-1
Received: by mail-qv1-f52.google.com with SMTP id i13so4772562qvm.1
	for <blinux-list@redhat.com>; Thu, 25 Nov 2021 06:50:18 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=OPrT1U454Pb0Q5dMCSeGgtrD/n93sIT1lC1Z7GueDuM=;
	b=MtQrAMTAYMu0aorsnwOEQYTxLGt8HajTVKQuc+i3xeRSL5Jy50V0uUtUja7rD4ljLr
	Ja0xTzodhplCAsrt0DKDsuyyfnHIKL/AOqlfVmIsu7ZIbW5U4n9jnrQ4B864vEOZeweZ
	ttYVCaOFswJmuNpEP6SqXZxlscEqxHL7Rx4uJWgdiNaDlxPv71u+QJ63Kmckw6f599rR
	ohQSkjA5B1gJo0aKPRyzpIg5me9PYiLHohCw+uJHZiTthcyx+LFyIiQ5qsgPzav07fvp
	vuLG6/VD6QrLsWjW6D+6hARvXkdi3/upeEOhemfSuaJX6VHNygzrLjXDpo/2zM2OWn5p
	lvtw==
X-Gm-Message-State: AOAM530y5M5+CONpmGhrGVjnPE4wYNVmp1hcSoN2E1xMKpTV97iurvql
	CxgCDblUOHszEOBraxmLGEj0zO8xunQ=
X-Google-Smtp-Source: ABdhPJw8sZhjxeT9blUmRNkgYjhYFMZ5XKiZDCh+cva7UGvsN2I7A3fcEIo02ywZXM0ophmlVerlPg==
X-Received: by 2002:ad4:56a4:: with SMTP id bd4mr18100991qvb.16.1637851817778; 
	Thu, 25 Nov 2021 06:50:17 -0800 (PST)
Received: from ?IPv6:2603:6080:6304:450a::960?
	(2603-6080-6304-450a-0000-0000-0000-0960.res6.spectrum.com.
	[2603:6080:6304:450a::960]) by smtp.gmail.com with ESMTPSA id
	d16sm1533439qtn.59.2021.11.25.06.50.17 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Thu, 25 Nov 2021 06:50:17 -0800 (PST)
Subject: Re: More Fedora ISO weirdness
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <184f5e9b-8258-63e9-b780-f52b2eb245a3@gmail.com>
Message-ID: <003cadf3-7052-ceac-77a9-e797b74b26e6@gmail.com>
Date: Thu, 25 Nov 2021 09:50:16 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.0
MIME-Version: 1.0
In-Reply-To: <184f5e9b-8258-63e9-b780-f52b2eb245a3@gmail.com>
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

I don't think you can find the 34 MATE spin on the spins page anymore, now that 
35 is out. But I was able to still find the direct link.
https://dl.fedoraproject.org/pub/fedora/linux/releases/34/Spins/x86_64/iso/Fedora-MATE_Compiz-Live-x86_64-34-1.2.iso
I think this may be the last release that doesn't use wireplumber for sound 
session management. Hope it helps.
~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

