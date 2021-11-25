Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 1613C45D17B
	for <lists+blinux-list@lfdr.de>; Thu, 25 Nov 2021 01:03:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637798624;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=DBQREjz6t9K7FAReqSc/OQ1JPZHC++RCACWoMbrW/2w=;
	b=anz+LKfzYQL+6FdRuJO47eq4OspZm10jWyj/FqnjSw3MPyfEFMj67p14U/KFZCtQ5hrsIj
	bZyczwLRLClxNzXHzo77yJTz2oO418aufzb97MPk4jnux0zmYqQq6jeieNamMwa955Ws/C
	LZiafeG0KxlGdwxGnaXeeBznZHmmyZ4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-470-SiZjdxkdPk-PyNZnd7Od_w-1; Wed, 24 Nov 2021 19:03:40 -0500
X-MC-Unique: SiZjdxkdPk-PyNZnd7Od_w-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 126851006AA0;
	Thu, 25 Nov 2021 00:03:36 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C7A4F60843;
	Thu, 25 Nov 2021 00:03:35 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 2FD581809C89;
	Thu, 25 Nov 2021 00:03:32 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AP03QED001480 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 24 Nov 2021 19:03:26 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id E7F232166B25; Thu, 25 Nov 2021 00:03:25 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E27A02166B2D
	for <blinux-list@redhat.com>; Thu, 25 Nov 2021 00:03:22 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 197B280B703
	for <blinux-list@redhat.com>; Thu, 25 Nov 2021 00:03:22 +0000 (UTC)
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com
	[209.85.221.53]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-422-FQYgYw4eOryPKLN-vyKZ9A-1; Wed, 24 Nov 2021 19:03:20 -0500
X-MC-Unique: FQYgYw4eOryPKLN-vyKZ9A-1
Received: by mail-wr1-f53.google.com with SMTP id c4so7500552wrd.9
	for <blinux-list@redhat.com>; Wed, 24 Nov 2021 16:03:20 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=wzcsRwzjU1jUsoqf2e60LA4wQve33ut3/2AckSILSJs=;
	b=DwXvAUiuNFrJ9OAIn6X1CdRttnzn1ZV4nR7Bch5zZvlugrnmJomhzCuZZ7j7BL71u5
	pJZSebFEJ/Xn0hhin/o3W9jCwEBlETkXjlv0pjH6DXoN17EliN9SCQ27W6e4oJ3JL7E/
	jye6PTQzxn8EsfPqcYyn/iC800e32HLjNVK98RJGP7ydXVagq3bkGjgvYX+ysQ5QiIYO
	a91a1m0WbYUp5oqs4RZzqKFNrca8ryje0d7ADo+Xg/hCULVH7bGsPJy3+lhqgz9W8+lB
	kaqGVSMbAcPDF19+8srjfEWLC1rDF3gq5376LEAcuf3AGsq8h2iSZCw51Xz1fzQY4rop
	rr1Q==
X-Gm-Message-State: AOAM533fe0P8fxmghSuQv0FZVEr+aG2JRMIVPOVwOMpUZz856RbJ0BMd
	khrtCqTfFwWq0lrdMIC8ITYTohhagd4CBg==
X-Google-Smtp-Source: ABdhPJy30bl1++Rwn64AGHLNJxAjAfpi9qmg0wvTkmPzXZf1BCW4/ERFHyolgC6lHvqKMOSMDyf40A==
X-Received: by 2002:a5d:6dc3:: with SMTP id d3mr1427941wrz.159.1637798599079; 
	Wed, 24 Nov 2021 16:03:19 -0800 (PST)
Received: from [192.168.1.130] ([90.251.213.111])
	by smtp.gmail.com with ESMTPSA id q4sm1128117wrs.56.2021.11.24.16.03.18
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Wed, 24 Nov 2021 16:03:18 -0800 (PST)
Message-ID: <e0e1f20e-e4cd-1c84-d620-a0aee6c7e8ba@gmail.com>
Date: Thu, 25 Nov 2021 00:03:27 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.3.0
Subject: Re: Fedora and virtual machines not starting
To: blinux-list@redhat.com
References: <5c81b0ff-aff6-4a36-c51d-5d158ef96b69@gmail.com>
	<7e0f2665-fa77-42db-62bc-bc92ecd199d9@gmail.com>
	<521d7813-65f3-ed3b-6a0d-9377ef379904@gmail.com>
	<2a4351fc-b90c-b662-1fce-7999a721bad6@gmail.com>
	<d8052d3c-e817-2800-8039-d93f30b02803@gmail.com>
	<f1953152-1ebc-0f21-7f23-db9a329ec5fb@gmail.com>
In-Reply-To: <f1953152-1ebc-0f21-7f23-db9a329ec5fb@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Whereas I have sound with 34, albeit very, very laggy using qemu instead 
of gnome-boxes, but that may be down to a config issue and it using 
Gnome instead of Mate, and 34 vs Rawhide however, so something strange 
is going on if I can get quickemu's downloaded F34 iso to boot up with 
(albeit laggy) sound but I can't with F35 or the Mate spin.

I'm not sure if it's something Solus specific that's making me have 
audio with F34 however, vs dead silence.


On 11/24/21 23:55, Linux for blind general discussion wrote:
> So I just tried 34 workstation in gnome-boxes, and I have the same 
> problem. I actually pulled this one down directly from inside of the 
> gnome-boxes application itself. My best guess is that pipewire doesn't 
> like virtual environments or something. Gnome-boxes is known to have 
> extremely laggy audio, but I've never gotten dead silence from it 
> until now.
> ~Kyle
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

