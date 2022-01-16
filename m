Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id C0B0F48FD9B
	for <lists+blinux-list@lfdr.de>; Sun, 16 Jan 2022 16:26:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1642346803;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=5h9Q27rQ28W+Gvc6SKgexW+zcCUIw5WFuHy6AXVmDUE=;
	b=Xx8G3b2bKvqRAUiwidFaDMAqzuhW3nrU5F1TVgO4mS3GuVEkKbpJ5p4Tm+ytgkctGmKjN0
	WkMpYIXDfTawoQ3/PZ6ajJBeMPDtJuT2f9A2i2j/cifdYTmxtU9WgI8XpGuwbcG13hYaWy
	wTj9TIwi9/RoXncPcosQC4jZrNlB640=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-185-YRybBOpuOD24ZhlrmYtlnA-1; Sun, 16 Jan 2022 10:26:40 -0500
X-MC-Unique: YRybBOpuOD24ZhlrmYtlnA-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3B7388143EA;
	Sun, 16 Jan 2022 15:26:36 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1875E2DE9F;
	Sun, 16 Jan 2022 15:26:36 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id DCCA14BB7C;
	Sun, 16 Jan 2022 15:26:35 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com
	[10.11.54.7])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20GFQWrn026568 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 16 Jan 2022 10:26:32 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id DE1BA1410DD5; Sun, 16 Jan 2022 15:26:31 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast10.extmail.prod.ext.rdu2.redhat.com [10.11.55.26])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D9292140EBFE
	for <blinux-list@redhat.com>; Sun, 16 Jan 2022 15:26:31 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C0F2D1C05154
	for <blinux-list@redhat.com>; Sun, 16 Jan 2022 15:26:31 +0000 (UTC)
Received: from mail-qk1-f180.google.com (mail-qk1-f180.google.com
	[209.85.222.180]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-310-_2kiZ-kGNzG-h1ggGAyBuA-1; Sun, 16 Jan 2022 10:26:30 -0500
X-MC-Unique: _2kiZ-kGNzG-h1ggGAyBuA-1
Received: by mail-qk1-f180.google.com with SMTP id 82so16475445qki.10
	for <blinux-list@redhat.com>; Sun, 16 Jan 2022 07:26:30 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=Ph9ENWw6OzhWuWYJ/0yfNjaUIjFHS/sxPjpuQ9XbPcI=;
	b=kUyZEarn/vHo28jlJg+bcV2uoCOmi+VOs1Qg9OcKoyNVWB9Rz/EX/7E4Qk2Ij3dtqr
	UBUPE0Ke+eAbVBx/yVxMRMj31yxW+5f+2+j14a7HFV6LXu6ZE3ldDtpVZft/E8B707VP
	J0kF5pB6BkEkc3uoMYmL8o1Xk4Rb+2AX3GFVay/gjQYO8janAuNq5bLZkLF0Hh9GdbxR
	fE9Zov6TeJu1u61uj86IMYWQ3dTCwlXlShbx/fH5vpISjIKbSRTOGj+mtYGT8rPhw186
	N1R8pITnXnRIjLoi4SWtqc8rynj++5TRmWB0t96A2bfSZzC43DOVmhlvrwQP5owzqdS1
	7DGQ==
X-Gm-Message-State: AOAM531kcO9yTW8JfA+vUZbndaETAKO7+nDrOGI8Kktx4pvS2j7hvRqc
	w6yYOKxwpoOBKHKxgFQIbn15oFPbWzot3g==
X-Google-Smtp-Source: ABdhPJykSNdzNHW67ytcVug2lfGDtTK8yBSxrj2kgXt/8Pz0+ZYgrfpxOeB6MRzX5DpGI9649++dyA==
X-Received: by 2002:ae9:eb03:: with SMTP id b3mr11938150qkg.415.1642346789501; 
	Sun, 16 Jan 2022 07:26:29 -0800 (PST)
Received: from ?IPV6:2603:6080:6302:e002:e826:5227:4681:6e2d?
	(2603-6080-6302-e002-e826-5227-4681-6e2d.res6.spectrum.com.
	[2603:6080:6302:e002:e826:5227:4681:6e2d])
	by smtp.gmail.com with ESMTPSA id
	m7sm2320975qkn.103.2022.01.16.07.26.29 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sun, 16 Jan 2022 07:26:29 -0800 (PST)
Message-ID: <13f4a440-ff30-5bfe-395b-6b2e9fe864d6@gmail.com>
Date: Sun, 16 Jan 2022 10:26:28 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.4.0
Subject: Re: No Orca in Fedora
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <E0D83498-771B-46C6-A46E-F3FC7ED1E64E@icloud.com>
	<ada734e7-60f0-2562-5870-d8b1392c38d@panix.com>
In-Reply-To: <ada734e7-60f0-2562-5870-d8b1392c38d@panix.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.7
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

Both Fedora Workstation and the MATE Compiz spin include Orca, but the 
shortcut doesn't work in the MATE Compiz spin, so you have to start it 
using the run window. I didn't ever run the Cinnamon spin, so wasn't 
aware that it didn't include Orca, but my thought is that the developers 
of the Cinnamon spin are not aware that Orca works with it. I know I was 
unaware of it, having heard that Cinnamon was not yet accessible to 
screen readers, so this is something that can probably be filed as a 
feature request for the 36 spin, since it's still early in the release 
cycle.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

