Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 215A13CB70E
	for <lists+blinux-list@lfdr.de>; Fri, 16 Jul 2021 13:56:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1626436597;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=pcbHJ7u9UFzPvdYiXsB0m5s+i38ys+NMJxAnh77+334=;
	b=RPS+RK//4U4irETEOPAMF/nbfYYsEUhQ3lO3GRwpAxCuTTXcbehx6klrnZlo6oXSpXpAtp
	rFz3Rc4hqmLxhTnqHTTuYSoBF4xA6pgX8S36LdZ93sJJ1wZ1xa4ZRRIKFvYTM8snEj41mr
	7WFsFOh52JsrboNcHUQzkpbJA4tLGrw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-528-RnFztgsXNjuL5LL5D2JJbg-1; Fri, 16 Jul 2021 07:56:35 -0400
X-MC-Unique: RnFztgsXNjuL5LL5D2JJbg-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C21F13626D;
	Fri, 16 Jul 2021 11:56:31 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6E6403B04;
	Fri, 16 Jul 2021 11:56:31 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id D43FD1809C99;
	Fri, 16 Jul 2021 11:56:29 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16GBuPAs015100 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 16 Jul 2021 07:56:26 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id DE7BE10548C7; Fri, 16 Jul 2021 11:56:25 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id DA29710545BC
	for <blinux-list@redhat.com>; Fri, 16 Jul 2021 11:56:23 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id EEC0A96B043
	for <blinux-list@redhat.com>; Fri, 16 Jul 2021 11:56:22 +0000 (UTC)
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com
	[209.85.221.50]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-564-JjGxOnIIOXKKNku6yRwx_g-1; Fri, 16 Jul 2021 07:56:20 -0400
X-MC-Unique: JjGxOnIIOXKKNku6yRwx_g-1
Received: by mail-wr1-f50.google.com with SMTP id i94so11786952wri.4
	for <blinux-list@redhat.com>; Fri, 16 Jul 2021 04:56:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding:content-language;
	bh=W6qfKbYwXNhwcOK4ZCJ9xwnQwBB4QAWfTMr8M+QhPdo=;
	b=CRTVcbbt0JFqfLtNQtOfkMsdLaj+pzcAvxR1ujUw5ETh7TbCU1p0RjRUa43TUs5Nxf
	mwQJhyADfH8zQqD3IxcEKCkCLi8g0MID5+2+m6lYbdPtXNTrn0DSv1zaDyLfjQYj2hII
	8DpnppftptraTfaAyGTQZe1sclOMQBX7X8/AO3Qawo5qjtNd0CondLRH7feY0TQNVcPd
	q5tJf/9ej8lfKyvXLHs76E+oaMC1q6kA4x63AvsLmRehg92V5GTbxcHE5KmNlPX+m6j0
	g+52ZcpRDYJUA+DXuMF7ESeFNDTX+J4l48Hpu1kY4BNU2v29urS39aPiblVsuRQp2T2G
	/D4A==
X-Gm-Message-State: AOAM5300wTSADX6JAj8yGVfDGq/y/HfburS30UqDlcqaZL4vyNEDo94m
	0HKXWVN4Vhpluah1IHL4vJFRIrIbgJitxA==
X-Google-Smtp-Source: ABdhPJyaeCnpCOVZoi3JaqMWpXK2Hl19pNBLmnFOVlI8+jQsR72bGcdW+Z2NjT3R6VNviOPS12BCIA==
X-Received: by 2002:a5d:524e:: with SMTP id k14mr11861349wrc.264.1626436579421;
	Fri, 16 Jul 2021 04:56:19 -0700 (PDT)
Received: from [192.168.1.102] (radio12.infos.cz. [46.33.112.76])
	by smtp.gmail.com with ESMTPSA id
	s13sm9640218wrm.13.2021.07.16.04.56.18 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Fri, 16 Jul 2021 04:56:19 -0700 (PDT)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Where can I find ocrdesktop
Message-ID: <cb842f3f-188c-13e1-2bc1-a699cbb577a8@gmail.com>
Date: Fri, 16 Jul 2021 13:56:18 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.11.0
MIME-Version: 1.0
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hi,

I downloaded Lios 3 and it is working for me. Now, I want to download 
ocrdesktop, which was previously located at linux-a11y.org, but when I 
enter this address, Firefox can not load it. So, can I download 
ocrdesktop from some new location? Google isn't helping.

Thanks,

Pavel


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

