Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 84B37362EF1
	for <lists+blinux-list@lfdr.de>; Sat, 17 Apr 2021 11:41:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1618652505;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=e9JoSslyEXL2KeZFyXfUyY5IEGrrKAQ9cOtBhbT2XKU=;
	b=fr9Ls1Fx3wakVBOZP6UVGEPMznVMdjjoLqaghyw3vj+Uik97O51p2Bd3aVUqMlXPZ1nmCW
	4wR5AK5+6CYIqv1kgo8fAuOY1Vz9iGHiEkF4ZwboMr/6qOxe7vu0NQEUvfExgiGGU3g34B
	P771KaqUKVhs6TvSgeZn3wDQc3tPAto=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-85-6UB-ZlnxOYuH4tktj3u9gA-1; Sat, 17 Apr 2021 05:41:40 -0400
X-MC-Unique: 6UB-ZlnxOYuH4tktj3u9gA-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4116187A82A;
	Sat, 17 Apr 2021 09:41:35 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id DC7D02B3C7;
	Sat, 17 Apr 2021 09:41:32 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id F062E9985;
	Sat, 17 Apr 2021 09:41:26 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 13H9cD2Q029428 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 17 Apr 2021 05:38:13 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 98285E5995; Sat, 17 Apr 2021 09:38:13 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 92DDEE56AF
	for <blinux-list@redhat.com>; Sat, 17 Apr 2021 09:38:11 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E7714185A7A5
	for <blinux-list@redhat.com>; Sat, 17 Apr 2021 09:38:10 +0000 (UTC)
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com
	[209.85.128.42]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-391-nh-ZziWmNZ62bLPmKXK0iQ-1; Sat, 17 Apr 2021 05:38:07 -0400
X-MC-Unique: nh-ZziWmNZ62bLPmKXK0iQ-1
Received: by mail-wm1-f42.google.com with SMTP id
	o9-20020a1c41090000b029012c8dac9d47so8378650wma.1
	for <blinux-list@redhat.com>; Sat, 17 Apr 2021 02:38:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding:content-language;
	bh=A58uy3iXRyCG0r8LtPMUqKkRvIwYNYUvQjRVO4V1Mrc=;
	b=XV1ywoRvX09VkIN6x9w/wJFe1rHVP97y0ctN0+LHuSPiPSG9KwWevNooifXmPw26ZG
	lwEWL6nMYBm8f+SVMYuVUiNWBDLkisRNHG079SXTDzxQOcsuMFYxauUOSw6lsLAfscv/
	voYgV9ubJpUjDPUg1+GG0sb7woE/xxGrMaK9koHg4BXacpE7klECkyzIDNIh+vMeY8Fu
	GcvmzfJiGxGSyb+9bhFD/XE1JuM3tVJm50PcSoSlnVldICk/DeEATEiQD/asFjfp0zYB
	YnMSqKMBcseHVQtAnXedey8NzVCGTveHkxPHGO2vQlXc9bwZXq5i3uSD8sPcvV5pkEpX
	hEyw==
X-Gm-Message-State: AOAM533a5LhhEnaXBdiznDTCQ1bkVQ95k/zqht4uuwsiMdn1J6GQOv69
	Hd5itSIPkRX2aqpYtgW9ewgce7eMNGM=
X-Google-Smtp-Source: ABdhPJx28eBcBuuzn79I5tadn3zQKVkQLjpAOAl49ZCD9OgxK2kBt7uotySv32wHyYmuxFHECVNILg==
X-Received: by 2002:a1c:804d:: with SMTP id b74mr11595329wmd.15.1618652286794; 
	Sat, 17 Apr 2021 02:38:06 -0700 (PDT)
Received: from [192.168.1.130] ([87.74.160.207])
	by smtp.gmail.com with ESMTPSA id
	i4sm14572898wrx.56.2021.04.17.02.38.01 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sat, 17 Apr 2021 02:38:01 -0700 (PDT)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Gmail and attachments (or...how do I?)
Message-ID: <590d3aa1-b8d5-5999-63a3-f94bff3d694e@gmail.com>
Date: Sat, 17 Apr 2021 10:38:00 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.7.1
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

So SL got me thinking..


Aside from Thunderbird with the extract attachments plugin...is there 
any other way to download a lot of attachments from, say, Gmail/Yahoo/etc

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

