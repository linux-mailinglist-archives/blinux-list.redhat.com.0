Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	by mail.lfdr.de (Postfix) with ESMTP id 2D84A1D1C41
	for <lists+blinux-list@lfdr.de>; Wed, 13 May 2020 19:28:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1589390890;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Pe/fPj7NRl6gg5wYyhHc5R7oCP6B9cOtUBTyBKBXbHA=;
	b=VISqE2fjcnG1zp2PG54iFEV7RTusjYCk/3rJl6Zg8mdd/iRYIQE5BPsSF9cs/5BAvu5LmH
	dMOI5EhdLaxIXWX3OXbd+a5KIWebba530XoH6+qeEjRPmPkfUpQ/Z967+oiLV2TQ3K5BLb
	hzlq1GCTiiXSb2YlibU17kcna8TjXb4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-277-98SweZJRM7SYx9h8DcVang-1; Wed, 13 May 2020 13:28:08 -0400
X-MC-Unique: 98SweZJRM7SYx9h8DcVang-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A0A2F18FE863;
	Wed, 13 May 2020 17:28:02 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 866925C1D3;
	Wed, 13 May 2020 17:28:02 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 600751809543;
	Wed, 13 May 2020 17:28:02 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 04DHS0U6013278 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 13 May 2020 13:28:00 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 3E1392156A4A; Wed, 13 May 2020 17:28:00 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3456D2156A49
	for <blinux-list@redhat.com>; Wed, 13 May 2020 17:27:57 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 59339810B40
	for <blinux-list@redhat.com>; Wed, 13 May 2020 17:27:57 +0000 (UTC)
Received: from mail-oi1-f178.google.com (mail-oi1-f178.google.com
	[209.85.167.178]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-129-TtiVl_NcO1micZ2N1ha4rA-1; Wed, 13 May 2020 13:27:55 -0400
X-MC-Unique: TtiVl_NcO1micZ2N1ha4rA-1
Received: by mail-oi1-f178.google.com with SMTP id o24so22133154oic.0
	for <blinux-list@redhat.com>; Wed, 13 May 2020 10:27:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:content-transfer-encoding:mime-version
	:subject:date:references:to:in-reply-to:message-id;
	bh=bTess+s7P9OFyJrnkPI9n6fx1SgzUCga6m5frVh9RcQ=;
	b=g2zmV6/cve9bP9aF4kiRjWMHM2yLMylr4QVnUnZfCbsinpp9uOOJfRvUIvU+e+WvAn
	OFUyhY4OKSInnwJfH7q/ksi+5IGjtRgYPCcLjn2mKFXm6JD+JjELOiobNLD0Yb2XpvFv
	imZmrcOEw4AU+rniEPqclXdwYwWvET3WrsVWs6DsEYdPr1Ja/9pdBaxVETIPkeyj1CYy
	fxrO0u4Dwo/RaFuHfPOy9m3ZVRDy1VFVxXxxiaCUJ1lPqWFUfCu/WQPKEXwbfb/DUyan
	ecuJzMfMOibKl8por035tou7QFtLunFBUcu3Qo8HzxIVZ3omhbUxsF3GJ9S2MXfo99Vp
	u12A==
X-Gm-Message-State: AGi0PuYpvCaFZaOpmrzfOb4DUkfu0xQZN75KW5WDS1Gyysyjk9Z4ytx0
	r30Gaa27wsnADqM9p+5VUcoVkW+J
X-Google-Smtp-Source: APiQypJDgl+XcdPkGwjVOx5BX3gaW3OwY42Cos6lwB1MmbuXlBWIXSJ2JqWXzrS/fThEfW02SToFug==
X-Received: by 2002:aca:3746:: with SMTP id e67mr21772912oia.112.1589390873936;
	Wed, 13 May 2020 10:27:53 -0700 (PDT)
Received: from ?IPv6:2601:3c2:8200:9360:c459:2f58:5ff0:25fb?
	([2601:3c2:8200:9360:c459:2f58:5ff0:25fb])
	by smtp.gmail.com with ESMTPSA id l2sm73071oou.7.2020.05.13.10.27.52
	for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 13 May 2020 10:27:53 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
Subject: Re: b s d and orca
Date: Wed, 13 May 2020 12:27:52 -0500
References: <12986DCD-076F-4781-AC3C-DECFD69D5A1C@gmail.com>
	<A3925F9E-75B0-4E9E-AF8E-EC29BF01496D@gmail.com>
	<b12267b0-944d-d609-53dd-11e9375f002d@gmail.com>
	<FCD3A752-75FC-4A33-BEAE-D96D42DB15DB@gmail.com>
	<b85fb8d0-a4ac-e83f-c82c-38a7886b6bdf@gmail.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
In-Reply-To: <b85fb8d0-a4ac-e83f-c82c-38a7886b6bdf@gmail.com>
Message-Id: <8D288BBE-1C57-4394-AC55-653FD5B17442@gmail.com>
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 04DHS0U6013278
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

No it did not speak.

> On May 13, 2020, at 9:40 AM, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> 
> I'm glad GhostBSD is still around. Did you get it to speak?
> 
> ~Kyle
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list
> 


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

