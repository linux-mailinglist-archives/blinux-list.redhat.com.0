Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D23845D087
	for <lists+blinux-list@lfdr.de>; Wed, 24 Nov 2021 23:53:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637794435;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=jCUtDkXZGPVYFZR0+Ji+ToBgwwyvaGMerAkoiaFWOGo=;
	b=FIsGNW8ak1ElEIpx8SKtqXG6HALXhmTmSLTkJxqM0aMTxXsNOF4cXHinEI4/fv3jNmML1v
	afa7Pp4A7wQVMcNLTmTt6/G5A2p77Z6JkrTh5r5aXWpRyXszxQOp4aDrCKicfvg/gU7l3J
	n3Uqp8DS8q2vh0bS0uZxj5e9Oh7bU+A=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-261-pYYxp_PcNc2bIat3sE5mkA-1; Wed, 24 Nov 2021 17:53:51 -0500
X-MC-Unique: pYYxp_PcNc2bIat3sE5mkA-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 73F43185302A;
	Wed, 24 Nov 2021 22:53:47 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1A85F79459;
	Wed, 24 Nov 2021 22:53:45 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id A84F34BB7B;
	Wed, 24 Nov 2021 22:53:39 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AOMrPCj029440 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 24 Nov 2021 17:53:25 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 7995240CFD0E; Wed, 24 Nov 2021 22:53:25 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7335A40CFD02
	for <blinux-list@redhat.com>; Wed, 24 Nov 2021 22:53:25 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 5792780A0B5
	for <blinux-list@redhat.com>; Wed, 24 Nov 2021 22:53:25 +0000 (UTC)
Received: from mail-qt1-f172.google.com (mail-qt1-f172.google.com
	[209.85.160.172]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-117-XNVtwm2eMge6-fH5J-nDNg-1; Wed, 24 Nov 2021 17:53:23 -0500
X-MC-Unique: XNVtwm2eMge6-fH5J-nDNg-1
Received: by mail-qt1-f172.google.com with SMTP id m25so4285309qtq.13
	for <blinux-list@redhat.com>; Wed, 24 Nov 2021 14:53:23 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=9OA0n6QP2gnezEB0NqjXE+HVxVC8ahM1EirSd7mScYs=;
	b=OOtyme0J2YawuIGi+6LQ87uScmtBqai6zdoLlwRpCOGzyqm3R0uWx307XCd/Dyt6xA
	+mjMnXu+VUtuMplUL+v0OXMQmRn6ABIesvvbc5mg43WD6dlV8ySgQZhaIsaPv5t8bN9D
	V+8T3IQE/UhNKh+Uzo0jJScqi10ovM0/iZR8Mi6Y7BNYDPOc36nGvovJyvsFH8dSEI5/
	PwJS7znYL1rBhUZwWQR3K5mgLIACi0t71UR3ELqP0qHB3crFRW0sLCQigkN38QdvvuXK
	Nlk1LSWSUrixrQcKl35GaIUZaEwcg0NW5VohcnGFH8rr0Hfd0QQ9bM/i8liJqDFQ8V5/
	h22A==
X-Gm-Message-State: AOAM530vsRD2mySMIPAiyMIStCI2P2vN6NDZKcFA9kYO47j7G/ycE855
	xbUltWNr6H+sjtMBlgNYs3TJdiIOmCU=
X-Google-Smtp-Source: ABdhPJxYw+xcHK5qL+H3HlxEa/T9GsIXctCv/PE+lf+rZ6HCGmBSsFBdmgasxdkBfZuCoDXUju7vVQ==
X-Received: by 2002:ac8:5841:: with SMTP id h1mr2922305qth.517.1637794402721; 
	Wed, 24 Nov 2021 14:53:22 -0800 (PST)
Received: from ?IPv6:2603:6080:6304:450a::960?
	(2603-6080-6304-450a-0000-0000-0000-0960.res6.spectrum.com.
	[2603:6080:6304:450a::960]) by smtp.gmail.com with ESMTPSA id
	w10sm596091qkp.121.2021.11.24.14.53.22 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Wed, 24 Nov 2021 14:53:22 -0800 (PST)
Subject: Re: Fedora and virtual machines not starting
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <5c81b0ff-aff6-4a36-c51d-5d158ef96b69@gmail.com>
	<7e0f2665-fa77-42db-62bc-bc92ecd199d9@gmail.com>
	<521d7813-65f3-ed3b-6a0d-9377ef379904@gmail.com>
Message-ID: <2a4351fc-b90c-b662-1fce-7999a721bad6@gmail.com>
Date: Wed, 24 Nov 2021 17:53:21 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.0
MIME-Version: 1.0
In-Reply-To: <521d7813-65f3-ed3b-6a0d-9377ef379904@gmail.com>
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Interesting ...
I just tried running a Fedora Rawhide iso in gnome-boxes and I get no sound. I 
can see the desktop come up, but no sound is heard. I thought it was starting 
muted somehow, but I can't increase the volume either. I need to try it with a 
qemu startup script and hopefully I can make it work.
~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

