Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 920C542C2C1
	for <lists+blinux-list@lfdr.de>; Wed, 13 Oct 2021 16:19:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1634134743;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=kiL14SFAXXiQFmNhpafmSOwTO1zamqrd1bfXUROOC74=;
	b=L3CI5UmF+mHviV2xe66Uwl+UAcE2bDmE3GsSxkhLM3aVdcbDsaLKbWrZu1lWU+AP0wnxt1
	uDvHDo1eThkddE7lmgIQ3prKvx0pdcPK2FG5DtY5IZMqkN4nKGY0apX+zr/URqGgXTs2Di
	UtL8AsqImpUf5WryH3bzSvSoF4inxGo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-595-H0AcObSaOy-6HYm9jynb9A-1; Wed, 13 Oct 2021 10:19:00 -0400
X-MC-Unique: H0AcObSaOy-6HYm9jynb9A-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 2047F1012E4E;
	Wed, 13 Oct 2021 14:18:56 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0307560CC3;
	Wed, 13 Oct 2021 14:18:55 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id D5B3D4EA29;
	Wed, 13 Oct 2021 14:18:51 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 19DEIkae015953 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 13 Oct 2021 10:18:46 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 197A240D1B9D; Wed, 13 Oct 2021 14:18:46 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1568240D1B98
	for <blinux-list@redhat.com>; Wed, 13 Oct 2021 14:18:46 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id F1FDD899EC3
	for <blinux-list@redhat.com>; Wed, 13 Oct 2021 14:18:45 +0000 (UTC)
Received: from mail-qv1-f52.google.com (mail-qv1-f52.google.com
	[209.85.219.52]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-522-tJIhtNT-P8GAGRfe4SJ6Mg-1; Wed, 13 Oct 2021 10:18:44 -0400
X-MC-Unique: tJIhtNT-P8GAGRfe4SJ6Mg-1
Received: by mail-qv1-f52.google.com with SMTP id d20so1740706qvm.8
	for <blinux-list@redhat.com>; Wed, 13 Oct 2021 07:18:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=oUw2pHGN/fs9qveHpqVAw1CDYc9mMdFhgyhPBynQ144=;
	b=fvaElVcVNtfHtCZDssYP2ZMPIE2WrltvCV3L5L1LB/xwF209fIKaw6RRQumJqEssyo
	LJ0QiryodOpJx41QvPIAXrSo9FkDs3mCyW8o4+SV7MfL6DTQtAR0fTXIw+xW4jUPTdXo
	+JYKAjFwMmLfWrG/lr//WAlMoiiQoLGqFjytH7WMvpu/X0kdegXtJthNpOeqv6H0HC4s
	FlCuf7j8f0Hb7qH7Gg3eRASgzcvaBT4vzuYsskhEKrbN3XJfV1CeEnbQf+p4ucX4tB6e
	bFCMcfapR2O+GmeT2IpOVxOEWKEgeJk37K2+Db/Rck8T9KdEv8v2w5VoOWbp3y/ztrgQ
	C7iw==
X-Gm-Message-State: AOAM533c1zd3aPakQCoyGqUoEqOpSDg6Ojk2VqqygUu0NGFwTEsAnKBk
	DNOWkiGwqQuSM9x4gAygc5BJrBgIDhk=
X-Google-Smtp-Source: ABdhPJxd/gxEPgGT60BXV32DZEYxI2yvVW7llnyMJsEYARlJ+1bKtKtU1ADabYnL9nL3pcQZjzd5Ng==
X-Received: by 2002:a05:6214:194b:: with SMTP id
	q11mr35830098qvk.38.1634134723802; 
	Wed, 13 Oct 2021 07:18:43 -0700 (PDT)
Received: from ?IPV6:2603:6080:6304:450a::960?
	(2603-6080-6304-450a-0000-0000-0000-0960.res6.spectrum.com.
	[2603:6080:6304:450a::960])
	by smtp.gmail.com with ESMTPSA id a4sm6905758qtm.12.2021.10.13.07.18.43
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Wed, 13 Oct 2021 07:18:43 -0700 (PDT)
Message-ID: <46be28d4-232e-d9cd-5f32-3e752ba33d44@gmail.com>
Date: Wed, 13 Oct 2021 10:18:42 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.1.0
Subject: Re: Any suggestions of what distro of Linux I should load onto a new
	computer?
To: blinux-list@redhat.com
References: <BE642CCD-41FD-4C31-AAFB-C4EE0CB1A200.ref@yahoo.com>
	<BE642CCD-41FD-4C31-AAFB-C4EE0CB1A200@yahoo.com>
	<830943b7-8c77-54d2-ef41-ebf35b2317d4@gmail.com>
	<41D44D20-F41D-4D2D-B3CE-3F00567522EC@gmail.com>
	<25040872-3042-4567-9052-D9FA44B55880@gmail.com>
	<CAGJxbF7g7n_wd6EAMSh+vm_kkdfurQZ+X=7-4em2XObQCxcXww@mail.gmail.com>
	<65AF279E-5331-45BE-B637-7CD454E89D68@gmail.com>
	<CAGJxbF5-ekrKayN2J5twy-0uwE+-RQTUomZPMH60GjYNQ7orqQ@mail.gmail.com>
In-Reply-To: <CAGJxbF5-ekrKayN2J5twy-0uwE+-RQTUomZPMH60GjYNQ7orqQ@mail.gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Running Orca worked on two computers here, one of which didn't need it 
except for a few operations I needed to perform using a screen reader. 
It's even more strange that the login screen is talking, but the user's 
desktop is not speaking. The only other thing I could suggest is running 
something in the run window similar to

systemctl --user restart wireplumber

But that doesn't appear to be needed here. Still it's worth a shot. Then 
restart orca by once more opening the alt+f2 run window and entering

orca -r

Hope something of this can help.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

