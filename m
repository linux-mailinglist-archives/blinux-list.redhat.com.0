Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EC064B2D86
	for <lists+blinux-list@lfdr.de>; Fri, 11 Feb 2022 20:30:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1644607799;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=T0xXsYmn3f+/sSuwkX49Og5r8Lf6JeACSwezAHznDXs=;
	b=EyMxwGeZ6cX6a8+KmkrExYvcd4fZlbedSpaIec06f9GtDGyYARBAjwIbIx3l9FiWrDju2/
	5YJ9StfiMGwwZjQM5oz3w375ju5XiFj6v62vDbE1NTF+iMBFbdpeMcT+/hh+IHxC+shVZW
	hCy1bQypROuyt+zGJQBaHRVFnQXYuto=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-619-I1ShQN_iOp6xBK7hV8JbhA-1; Fri, 11 Feb 2022 14:29:55 -0500
X-MC-Unique: I1ShQN_iOp6xBK7hV8JbhA-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0594C46860;
	Fri, 11 Feb 2022 19:29:46 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id EE371196F9;
	Fri, 11 Feb 2022 19:29:44 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 97BC61809CB8;
	Fri, 11 Feb 2022 19:29:43 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21BJPUCA015644 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 11 Feb 2022 14:25:30 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 30CB72026D67; Fri, 11 Feb 2022 19:25:29 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast09.extmail.prod.ext.rdu2.redhat.com [10.11.55.25])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2CC4F200BA62
	for <blinux-list@redhat.com>; Fri, 11 Feb 2022 19:25:26 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id BA2ED2B16876
	for <blinux-list@redhat.com>; Fri, 11 Feb 2022 19:25:14 +0000 (UTC)
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com
	[209.85.167.41]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-507-q1RIZiAFNYqaQ_72jeUcvA-1; Fri, 11 Feb 2022 14:25:08 -0500
X-MC-Unique: q1RIZiAFNYqaQ_72jeUcvA-1
Received: by mail-lf1-f41.google.com with SMTP id m18so18454040lfq.4
	for <blinux-list@redhat.com>; Fri, 11 Feb 2022 11:25:07 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:date:from:to:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=BlGf1b5QaQSe49NDlZZzyBa5mfun1zqhN1mqchWsLN8=;
	b=fr4+KuOsJbnnAkz44tifFRwM6v9QQ2A1Z9q3bKoADoudNJTjkNwMeMOM5+1d0bGX/m
	TL1u7SmK5PtnO5DDS/kbwuLn5fpoTPbxoBAEyltBEouP3WC/QKFb3td45iTfaw0ybRi8
	EH6AhJmu4bzX7Is06D6g5Vx1LLxqPHX616oP3IFaSnsPDnMIf22KaHpDa8mg41CBaXnW
	d+G+ES7TPobYAbOGZkTS9/eGv1KyMmz3inI1o1/OdIJK9iEcbnFVd733rMG3ZH0GNpIR
	FyBaVb9j+8Qca7MjeDCgSVnjp735ibRhLMOqofPYBJirPcCn7gXjBP9dLtZR/8UU4bVS
	C8zw==
X-Gm-Message-State: AOAM532NyM647kBvgyrlC1Dw9wW49Zas+BU9SZ1V7Du0IgrM4wakEt0u
	FWERL1nOaZD1RQSBmehrZAvG20DlzrE=
X-Google-Smtp-Source: ABdhPJxRF+PPV9ueXrX9smZ8lCaiwoHisfbO5SLrq1rqnMZ55EG6h7WEToACTbRN5/Zqbep+t/Dd8g==
X-Received: by 2002:a05:6512:3ba:: with SMTP id
	v26mr2235450lfp.662.1644607506040; 
	Fri, 11 Feb 2022 11:25:06 -0800 (PST)
Received: from localhost ([91.77.167.245]) by smtp.gmail.com with ESMTPSA id
	p16sm3252006ljc.86.2022.02.11.11.25.04 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Fri, 11 Feb 2022 11:25:05 -0800 (PST)
Date: Fri, 11 Feb 2022 22:25:03 +0300
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: `alpine refuses to save password
Message-ID: <20220211192503.rzsnjnewzf3cvaby@alex-pc>
References: <86C89C03-04F0-4D32-B8FD-905C03AB843D@gmail.com>
	<cfbbf827-101e-d8da-78a0-68cf8daf1459@panix.com>
	<4c22ef4-8e2d-eed7-b46b-94c6f780ecf1@brandt-slint.local>
MIME-Version: 1.0
In-Reply-To: <4c22ef4-8e2d-eed7-b46b-94c6f780ecf1@brandt-slint.local>
User-Agent: NeoMutt/20211029
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
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
Content-Disposition: inline
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Fri, Feb 11, 2022 at 03:51:26PM +0200, Linux for blind general discussion wrote:
> Hi Jude,
> 
> Thanks for this, seems like we'll have to deal with another pain in the
> rear, if we want to keep using bloody Gmail. I will be looking in to
> forwarding my mail someware else then.

to be honest, I have not heard of such plans in gmail and this seems to me
a very short-sighted decision. so I wouldn't trust this post too much
and ask for confirmation links.

> Warm regards,
> 
> Brandt Steenkamp
> 
> Sent from the Slint console using Alpine

-- 
Sincerely, Alexander

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

