Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id 195962E2803
	for <lists+blinux-list@lfdr.de>; Thu, 24 Dec 2020 17:14:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1608826471;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=OawgOZk6q1E3q8S65rwOVqF58MffbV7lLV+OreZHPJE=;
	b=I8VRjtuzvwMmbXXGZbeERj9qvEwEjYutMf//iixKLQTDNP4Kc5bGbPAdxabpfca10g9YX/
	M5Cxk/2Sb1/wVW3XQHD3AvgCEJ+ju8SJkh7/+qJYss0d5GyxNSdk3M9EvvZqCMimtQSq9n
	r8rcrQsYL7N8cDhw+SG5QD0uTnRWUgI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-590-atxDBA1OPuWQ6dLnukBEPA-1; Thu, 24 Dec 2020 11:14:29 -0500
X-MC-Unique: atxDBA1OPuWQ6dLnukBEPA-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7F3F3107ACE8;
	Thu, 24 Dec 2020 16:14:22 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E983B5D9C6;
	Thu, 24 Dec 2020 16:14:17 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 72B3F4E58E;
	Thu, 24 Dec 2020 16:14:08 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 0BOGDwq4016145 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 24 Dec 2020 11:13:58 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 883B410060FA; Thu, 24 Dec 2020 16:13:58 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8442C1111A5C
	for <blinux-list@redhat.com>; Thu, 24 Dec 2020 16:13:56 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 284B2186E120
	for <blinux-list@redhat.com>; Thu, 24 Dec 2020 16:13:56 +0000 (UTC)
Received: from mail-qk1-f173.google.com (mail-qk1-f173.google.com
	[209.85.222.173]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-444-cnhpBtk8OCKqZpjeD26AYA-1; Thu, 24 Dec 2020 11:13:54 -0500
X-MC-Unique: cnhpBtk8OCKqZpjeD26AYA-1
Received: by mail-qk1-f173.google.com with SMTP id 22so2369001qkf.9
	for <blinux-list@redhat.com>; Thu, 24 Dec 2020 08:13:53 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding:content-language;
	bh=kzM8bNQ4trIB+GsVxEsatnzXOesvKmjj4i0scMwTALM=;
	b=eI80rL2OfImdvY5I0N0TJw687iXL8z1hfr19Yj/TzdJicXlPxtvff9ZtwYw7guiv3y
	/EB9B1nX0H8SPiXX2v2PF5yLfoCe+Jvt4sMbQZdeHTZxaMLoaVtarJC2OfLK6/UqPNri
	fZ+rFkW1Mm6B3I5LvErnsFyQ3KNKhuTkOJAkHgXfjh8YPtBJdVhSwSRgOizpDssISEZ1
	KrizAQHMNR8X2BTzBKx/cqpIqSmXMn1fil/ZNIGP51+aCjvT98U4PmcshfA9KlEslXBD
	ycOifj8Rm5MdVTen0Adi4WVoLjC/4DiO44obHdg1iyRPSZ9dh99n5UkA8Qu5r2oAX5b5
	1d4Q==
X-Gm-Message-State: AOAM5326C2inpnOEyaKMK4G/OeTp9Cfkq+H6zxgo7YjSvfJroZmRtD1+
	/wsMahItO3M52+sUjklvEfesoYJO+vU=
X-Google-Smtp-Source: ABdhPJxUFv99uFCQgghK2uO6uuKlhyMG6tpfYPe84Zug3cZMNzi7Ag7ijtzSXX6GoDx8YPF6fqmrhQ==
X-Received: by 2002:ae9:eb8b:: with SMTP id
	b133mr31465821qkg.399.1608826433303; 
	Thu, 24 Dec 2020 08:13:53 -0800 (PST)
Received: from [192.168.0.64] (71-32-159-114.chyn.qwest.net. [71.32.159.114])
	by smtp.gmail.com with ESMTPSA id
	n4sm17005834qtl.22.2020.12.24.08.13.52 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Thu, 24 Dec 2020 08:13:52 -0800 (PST)
To: blinux-list@redhat.com
Subject: jack
Message-ID: <27178e12-3650-cc8f-94c7-8749f1e6303c@gmail.com>
Date: Thu, 24 Dec 2020 11:13:51 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.6.0
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
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

So I managed to get some headway with jack. But when I still start the 
server it takes orca over and I get no speech so I can't connect my 
pulseaudio ports. I tryed what you said and still got no speech.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

