Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 35A99444E67
	for <lists+blinux-list@lfdr.de>; Thu,  4 Nov 2021 06:33:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1636003990;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=18UanmVB8a534chpC2mKbJiBzYcinvR8GUIC9GZALQE=;
	b=H2raH9sEXkympFLnVBTiTHBAWkkfVlKDJ2YXgCIDSMOV3t7/uM/7e8WBnZKFayKdIYDCYk
	E2auXTleRcjAD8u3siUv7gDSW7SmLDO71S00vm+MGQsU+C1MzjxaFnFRq1i11g/ReHUILc
	55DbW4e6C1WQVTsUOGCkbs7dmZHs4JM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-157-6uC_n21PO8G2l3p3znFf8w-1; Thu, 04 Nov 2021 01:33:06 -0400
X-MC-Unique: 6uC_n21PO8G2l3p3znFf8w-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id AA0B7362FE;
	Thu,  4 Nov 2021 05:33:02 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id F0CF868D7D;
	Thu,  4 Nov 2021 05:32:58 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id E079D1801241;
	Thu,  4 Nov 2021 05:32:52 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1A45Wjct031281 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 4 Nov 2021 01:32:45 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 4C0A4400F3C6; Thu,  4 Nov 2021 05:32:45 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 47525401A993
	for <blinux-list@redhat.com>; Thu,  4 Nov 2021 05:32:45 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2ECF51064E6A
	for <blinux-list@redhat.com>; Thu,  4 Nov 2021 05:32:45 +0000 (UTC)
Received: from mail-pf1-f171.google.com (mail-pf1-f171.google.com
	[209.85.210.171]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-478-08oy2o1lMjqihQ9-nhH7Cg-1; Thu, 04 Nov 2021 01:32:43 -0400
X-MC-Unique: 08oy2o1lMjqihQ9-nhH7Cg-1
Received: by mail-pf1-f171.google.com with SMTP id m26so4779303pff.3
	for <blinux-list@redhat.com>; Wed, 03 Nov 2021 22:32:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:mime-version:subject:from:in-reply-to:date
	:content-transfer-encoding:message-id:references:to;
	bh=+vegSCxGcoMKP4VMYFDC23urjhbxBOkm4QQvae6Hs+U=;
	b=oyeUc+eWFYD6deNb0tonGRRCFROfe7l02grwgimOalXllAFcz4ktJLwIwQwQQ9mWm3
	rBIIPYw+9tofsaQqvb/lk7V3Q6HAU61782UX7F0fx/mYulv4XzYRGZg93xOnfhO2rmYa
	WylaAlrdEa9hgxu/MeKgNk1MmgqI7rbzHTcGvDw9cx4ZJ0NB03xch5a/ZDGpuzN2y/Ja
	mn6m4PYQO1JmFIhfJ80ft6I9t1N56Uc4iUWggQ+TSySJIEaRmcudaMvcUpWduI8RiS+J
	MSyBEmw6Pxd1fdWidfIOhFTLM8DfFZqBwv5tA1FL0Q7X2n7zMzQ30mRS9S3tk7mijMWL
	B8kA==
X-Gm-Message-State: AOAM5313vRDHsXW+4MybMWw13SnCMBNScSJ2SYH71kn6WrGC23LtSZBQ
	PPdEvG3Pus+dfLlJjZgrZo/atS75mWwqow==
X-Google-Smtp-Source: ABdhPJwh013tYWqLF6zYPxa8m/fw5ow3uZZZhDXZVA/b0uuXSRFcSBcSgbULZdjzF7ZneuMgAIIhxA==
X-Received: by 2002:a05:6a00:b4c:b0:481:2a:f374 with SMTP id
	p12-20020a056a000b4c00b00481002af374mr29809202pfo.60.1636003961912;
	Wed, 03 Nov 2021 22:32:41 -0700 (PDT)
Received: from [192.168.4.38] (24-113-81-134.wavecable.com. [24.113.81.134])
	by smtp.gmail.com with ESMTPSA id g8sm4019892pfc.65.2021.11.03.22.32.41
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 03 Nov 2021 22:32:41 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.120.23.2.7\))
Subject: anonymous postings
In-Reply-To: <fce16660-109a-fbea-ad65-75d77c682445@linux-a11y.org>
Date: Wed, 3 Nov 2021 22:32:40 -0700
Message-Id: <99C93103-154A-4522-A690-81731398338A@cfcl.com>
References: <CAGJxbF5-L+XZrVgE1-=zVo+0OMGYN8MyQbpb4dzog-fkQenRyQ@mail.gmail.com>
	<e69acb20-0467-35b1-3d40-eafae4543b48@gmail.com>
	<CAM+Q2c7O_0eLXVWMnmUEU7BTHkf4P=5dX20+hGc9yqpnOrr6dQ@mail.gmail.com>
	<1C66A443-A56F-4B20-895C-DD5B7FB80918@cfcl.com>
	<f222c105-e027-b6bf-df00-f2bc3733719d@gmail.com>
	<C4D8F75A-ADC8-4F6F-8F4C-9AE2BB8B0792@cfcl.com>
	<20211102083235.nuzcsnnrrr2kxyno@begin>
	<CAPo=n-9A+Q-iGjhEbZbb=0bCdGHBtEsFZH8QoR4bn+AoudT3qA@mail.gmail.com>
	<fce16660-109a-fbea-ad65-75d77c682445@linux-a11y.org>
To: Linux for blind general discussion <blinux-list@redhat.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 1A45Wjct031281
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Speaking only for myself, I find it very difficult to follow discussions on this list when the posters do not identify themselves in any manner.  To be clear, I don't really care if the name used is an alias (call yourself xyz123 if you like): I just want to know whether a message is coming from the same party that sent an earlier one.

- Rich Morin


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

