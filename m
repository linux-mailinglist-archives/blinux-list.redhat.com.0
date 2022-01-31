Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 97E594A4D42
	for <lists+blinux-list@lfdr.de>; Mon, 31 Jan 2022 18:30:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1643650210;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=eBSl9rA8FErf92Cb8JS0OLBNOs72pdKzS5Q9CR143kA=;
	b=Q3pQcqzhM1cKjcDImwDatTnPMtXj+EsqpeHF0VmGnl5BhrUWLDdlSoLPEAKqT9TLGGasgj
	JHNR9IwzRLsKYpGy8083/d0MtQr3LOB28nqjZ1w9tVdb6XpIdtiBueAldAuAy+HL1sFpKI
	AO+4ReTdMgjMEkUCarmtC68JEHH0L7o=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-92-JmNd5JH2O3KqIM1h9W66TQ-1; Mon, 31 Jan 2022 12:30:06 -0500
X-MC-Unique: JmNd5JH2O3KqIM1h9W66TQ-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C8A99193F562;
	Mon, 31 Jan 2022 17:30:01 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 17EC8838C1;
	Mon, 31 Jan 2022 17:29:57 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 6E29218095C9;
	Mon, 31 Jan 2022 17:29:51 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20VHTiab017437 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 31 Jan 2022 12:29:44 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 79B8E40CFD1D; Mon, 31 Jan 2022 17:29:44 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast07.extmail.prod.ext.rdu2.redhat.com [10.11.55.23])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 755DB40CFD0F
	for <blinux-list@redhat.com>; Mon, 31 Jan 2022 17:29:44 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 5C5BA3C01C06
	for <blinux-list@redhat.com>; Mon, 31 Jan 2022 17:29:44 +0000 (UTC)
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com
	[209.85.218.47]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-552-YX0YOHjrO3-og8xS-uk7Hg-1; Mon, 31 Jan 2022 12:29:41 -0500
X-MC-Unique: YX0YOHjrO3-og8xS-uk7Hg-1
Received: by mail-ej1-f47.google.com with SMTP id s13so45364096ejy.3
	for <Blinux-list@redhat.com>; Mon, 31 Jan 2022 09:29:41 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent
	:content-language:to:from:subject:content-transfer-encoding;
	bh=SKwOQ59vtjZa52a72P1T/EQTibZam0oRgaNZknr60t8=;
	b=7bdnZcujcr7PkJK7sBqRIO63z82sVVfV/QHVnusNRjyGTD6Pf0WY2627K5K0uPZ35o
	NOEScuqkqdIsV4aYJPsbR1wHAl09Frr0eqJY2+gsY8BKYi2FhApnu5TuiIcDNvc9HBJQ
	ovl3vlW2pFz7FPH7UjHXurjQf19Af3lAHGD31HGnsz5KM9P1F8iCda+HLEAXzpwYDs6s
	JTTJ2i62wR7Lm0dR3T3iRL3NRe5gsv5GxdrvHVXlKNaYxBWPw7GdXHZ6/DdGh8YO5HZQ
	ju0yhpgKEClCkGb79Wo3NI9VqD2DWxmU4kuV8khvHoS6fkJdwwJ3/LT/1hlesOfBFXh4
	AH/Q==
X-Gm-Message-State: AOAM530bJjPw3hURvAev6swFW2LeISmkT9RfZwfvbSU10YuWKjxZVpxE
	fauw31A9y8NYNgDxzTtOkrtFt1YTLPY=
X-Google-Smtp-Source: ABdhPJxobDDdDm10HJVQaihQ1m18kS+b6I5z55ogtknTjIrXKjOIAId/CSLi4pimjz4sreRGTT8Z7A==
X-Received: by 2002:a17:907:6e93:: with SMTP id
	sh19mr19043771ejc.386.1643650179881; 
	Mon, 31 Jan 2022 09:29:39 -0800 (PST)
Received: from [192.168.8.130] ([41.216.202.108])
	by smtp.gmail.com with ESMTPSA id
	i6sm13839129eja.132.2022.01.31.09.29.38 for <Blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Mon, 31 Jan 2022 09:29:39 -0800 (PST)
Message-ID: <cb563c0d-ddb1-b617-72ee-4ca580878cd8@gmail.com>
Date: Mon, 31 Jan 2022 19:29:36 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.5.1
To: Linux for blind general discussion <Blinux-list@redhat.com>
Subject: Alpine and speakup
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hi all,


I know there's a bunch of folks using CLI email clients out there, and 
as far as I can tell threw my reading, alpine is the most popular one 
out there.


I opened the thing, and cannot seem to navigate threw it with speakup. I 
know speakup can do it, I've spoken to others that do it, how though.


If there's something I must turn on in speakup, I'd need the laptop 
keystroke, this keyboard has no numpad.

-- 
Warm regards,

Brandt Steenkamp

Sent from the Slint machine using Thunderbird

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

