Return-Path: <blinux-list+bncBDGI3AUYYYCBBXUXWKZQMGQEPVWSTNQ@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mail.lfdr.de (Postfix) with ESMTPS id EBAAC909248
	for <lists+blinux-list@lfdr.de>; Fri, 14 Jun 2024 20:28:47 +0200 (CEST)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6b2bde33df7sf500036d6.1
        for <lists+blinux-list@lfdr.de>; Fri, 14 Jun 2024 11:28:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1718389727; cv=pass;
        d=google.com; s=arc-20160816;
        b=CC7S3Ito+6L0uSRC0Kg7RXzIyGSNS7/IwCFiIufNhAg1fS/C9rvBGPa7Dd/29GXUab
         3oTQI96qJ3a8G2UGOjN1ZeMbf44mz/H7K1nUITGIJuuFCwhVx3n8L5L53AVdOx3+yhbI
         afDbVBKlCA7N1TuowzA5OaWtSDghrx4fekDWo2Fr2ddzWr0DNLQQd16ntXpPFr+YPLeY
         O4aLB4nZYJTie65HtxBb6lpt5Og4ZprhQHU3COIhoJY/PCzzrV9iF4rfAvsvOwyF0Bt4
         PM9i7711OBKHZHCj4/16hXhOt+xEWpD+h4FYhkzY1+FZGvgHYvyWjrn89648euIqeWoT
         qIww==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-disposition:in-reply-to
         :mime-version:references:message-id:subject:cc:to:from:date
         :delivered-to;
        bh=cfYcA6mouwTVaZvv5T0cySP/2M9O9q0djLLWw3LcIT8=;
        fh=hOM6F4Qk10XMihGo79fhGDIuq4BH7rbPM6oosiDQdVU=;
        b=i5a27bKk5o51AVENxZON0TXmfxmDfP6NJLWAtbAJTUgDk9jRDoSHUI4DQ/Yfd6vSuG
         SnsywVJQNclWGedo6kMJKCQ8fq/lTcfnGWC64Wv8aKi1s/KTJJ2fCdjVJOq0cjufAXl/
         Jyd+/LocC0DaKZdvcrTQcPqvemeXD+D+Vg33nxWwXMTf+IANoVy6DmoTTiWfstTM9/wP
         5btH2NWPKjNt8xuDJDUuccQXw0qQ6dwmegztO4UB1uwG8hXHsuv/As4oBoa5alcGlB7F
         B+UKTDiTwdnKBhLh7AWyGWgjDaycvfsAJxaBHvW/xMJ4sQkqWnO9nxqVtAXK4/A9JFj9
         bJRA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of salt@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=salt@panix.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718389727; x=1718994527;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-disposition:in-reply-to:mime-version:references:message-id
         :subject:cc:to:from:date:delivered-to:x-beenthere:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=cfYcA6mouwTVaZvv5T0cySP/2M9O9q0djLLWw3LcIT8=;
        b=iaWbpWFDbBR+gVGRYgxxAwhSm1rob2EiKq7w0SE06eAvToaXNeOEgGXl3VOyY/mCAh
         dx6Lvy2BgzTWnXvfV14E6/f7KGGOd/nniJl99F+3FyzW9v9jFc6RvNrQhHWeiqjN8d2r
         248fNwG4nvoeBsn9pu9vAc6UaCVnsHA6MiIjuSyHxyhofJvePqvDYvjQ6/4VT1s9KBRZ
         z318UccgShzjaGaED6Ibws6NpOQ/EoDzIeyc5a+NEXH4d41S/dq/FbZQ0f28gf+Zk7ui
         OfxLTxAm+rOXYPTyUShL9kOTqkdalddPF/RAD3hToJnvKlo4A1KqKkaT4x4T7LFDqBJc
         AMDA==
X-Forwarded-Encrypted: i=2; AJvYcCWNi9FxdrlOxlV0c/BBiCOGR15FK7itDBr8iwKiqPhf/WYEnfH041n5lB+WjE3lMZrmGOfHzyBXKZKvcIxt6i6C4chtYDbmjjRD
X-Gm-Message-State: AOJu0YzhihLsa5QoAkhc//QGqf4WBKh8ysrzE6SFMPfJSbx/TNirjclI
	t9aIjg4ijbAOZrNh344/XPXCLhixqjKBmCkdpuZe38wiRgAHB1r8XsQyJQyb1wQ=
X-Google-Smtp-Source: AGHT+IFViE6drgmsPSbpmlHN/ewFX25a0WLZ+xZCxK+8EnLTWV2kDUgFKGeXezKRfek7ndpxl5C6Pw==
X-Received: by 2002:a05:6214:2021:b0:6ad:5a54:992a with SMTP id 6a1803df08f44-6b2a33a9dc0mr100619306d6.4.1718389726645;
        Fri, 14 Jun 2024 11:28:46 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6214:5509:b0:6b2:a43b:dc38 with SMTP id
 6a1803df08f44-6b2a43bde83ls51269736d6.0.-pod-prod-00-us; Fri, 14 Jun 2024
 11:28:45 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXHsvtLFHlvT/b7/RymR2LBOKZe/hDgE/T311BfeO1FVDzfdeZM6IhIGrSu1XJDBfAN4E2B+Bjg/qngLm4K0fKrSmUt84DMN9emHB1s
X-Received: by 2002:a05:620a:394f:b0:795:5de4:6625 with SMTP id af79cd13be357-798d01f7422mr640852185a.5.1718389725751;
        Fri, 14 Jun 2024 11:28:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1718389725; cv=none;
        d=google.com; s=arc-20160816;
        b=I+j/3m/otExtyQHuUd4bI6zgZcmSb02fqYIw+vI+/P4agVcGBNVVyTWWh2Hpxxr4jg
         oBDnc9exHnPE4iK0bmz55lTTyIgI+SGv+zKxfGQ7OUF3CCNacYQkjqjasH1pura6hMa0
         EowtPVQh0xwSDNe8SUIjqYS0nyCthCsUiG4ttKXc7wlC3aGGvkAPqq3yrSa+5vHGcqCc
         tdaVJJKqEW+68HY+IIcugpmy44NMA582Teqmylg+JbncWnHnlVR5jLRrKd0sD+zvwszt
         GhRRYfqxvNmqW3bSqH3AMnumVFlQdxEJocWmfYBvP5j3FJZidpIYq6JtHEoUw/STKMrS
         wdfg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:in-reply-to:mime-version:references:message-id
         :subject:cc:to:from:date:delivered-to;
        bh=+pZ5G2+hPupVdDuulswEmlFy/HqnKgnB65SpNnytsBM=;
        fh=dhZ+PU+EbN3sWMMTWeiK7THfWDmeVmv2WnEI+ph4A3M=;
        b=Ql99RHiMnOawCh3JvDu2KP4IL2vdGbpixjyF459S5CnOzdBTxUC/m6lVlv66O+ARhl
         NiK1MOnybFoam6iyE8TbMTlgN2APqCdDKxFKeILPTp7O4OemO5axbNkvLBwJW+Rao3qK
         p+3Y3eDfF1FEsMCTsU2dIIh9y39zt/i8w6XUf/sItZIo0L9KodlAjvMVpjGwZS/KOpy2
         Y2v5OMbDA3dEByvGusbZ5uZaBnsRnHB8dC+SuUKmuTFdlXgxs8/1ko3JB44tETlfTyh5
         l11HVa4mdpPguyrZ/x54v8yRg2v00WwB2rOoPHxBbzj8CRCz5pPVWr1AcFX+2cOSt1lR
         sBag==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of salt@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=salt@panix.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id af79cd13be357-798ac096e1dsi417100385a.783.2024.06.14.11.28.45
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Jun 2024 11:28:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of salt@panix.com designates 166.84.1.89 as permitted sender) client-ip=166.84.1.89;
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-552-HY3yjDGYMAq_m1P8KfE5CQ-1; Fri,
 14 Jun 2024 14:28:44 -0400
X-MC-Unique: HY3yjDGYMAq_m1P8KfE5CQ-1
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 4AF701956095
	for <blinux-list@gapps.redhat.com>; Fri, 14 Jun 2024 18:28:43 +0000 (UTC)
Received: by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 3CACF3000220; Fri, 14 Jun 2024 18:28:43 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.49])
	by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 3A43B3000219
	for <blinux-list@redhat.com>; Fri, 14 Jun 2024 18:28:43 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (unknown [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id B1B0A195608C
	for <blinux-list@redhat.com>; Fri, 14 Jun 2024 18:28:42 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-63-hEddfiA1OZ645YWqr59Yjg-1; Fri,
 14 Jun 2024 14:28:40 -0400
X-MC-Unique: hEddfiA1OZ645YWqr59Yjg-1
Received: from panix5.panix.com (panix5.panix.com [166.84.1.5])
	by mailbackend.panix.com (Postfix) with ESMTP id 4W17875BJfzq3x;
	Fri, 14 Jun 2024 14:28:39 -0400 (EDT)
Received: by panix5.panix.com (Postfix, from userid 20196)
	id 4W17874vY1zfYm; Fri, 14 Jun 2024 14:28:39 -0400 (EDT)
Date: Fri, 14 Jun 2024 14:28:39 -0400
From: Rudy Vener <salt@panix.com>
To: Chime Hart <chime@hubert-humphrey.com>
Cc: blinux-list@redhat.com
Subject: Re: What Happened to duckduckgo?
Message-ID: <ZmyL1yPVblmWz_r2@panix.com>
References: <4cca313a-ff14-20be-a458-bddffae2f787@hubert-humphrey.com>
 <a0f98110-689a-41e6-a1b7-8c5f7b6cb939@gmx.it>
 <2b2e74b2-5cdd-4dbf-961c-a13940eb8bb7@hubert-humphrey.com>
 <ZmyHH4DeAXMQzthQ@panix.com>
 <594ca1fa-85e1-e610-9902-a2049c0555ed@hubert-humphrey.com>
MIME-Version: 1.0
In-Reply-To: <594ca1fa-85e1-e610-9902-a2049c0555ed@hubert-humphrey.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: panix.com
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: salt@panix.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of salt@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=salt@panix.com
Precedence: list
Mailing-list: list blinux-list@redhat.com; contact blinux-list+owners@redhat.com
List-ID: <blinux-list.redhat.com>
X-Spam-Checked-In-Group: blinux-list@redhat.com
X-Google-Group-Id: 304886998071
List-Post: <https://groups.google.com/a/redhat.com/group/blinux-list/post>, <mailto:blinux-list@redhat.com>
List-Help: <https://support.google.com/a/redhat.com/bin/topic.py?topic=25838>, <mailto:blinux-list+help@redhat.com>
List-Archive: <https://groups.google.com/a/redhat.com/group/blinux-list/>
List-Unsubscribe: <mailto:googlegroups-manage+304886998071+unsubscribe@googlegroups.com>,
 <https://groups.google.com/a/redhat.com/group/blinux-list/subscribe>

ddg is not a package. It's a script I wrote to make duckduckgo accessible from
the command line.

I have another script named google, one named youtube, and another named amazon :-)


The Amazon one lets me do:
amazon Harry Potter and the sorcerer stone rowling, j
or
amazon video monitor spoof plugs


Rudy

On Fri, Jun 14, 2024 at 11:14:24AM -0700, Chime Hart wrote:
> Well, I cannot find ddg in an apt or aptitude, but thanks, your suggestion
> would save some typing.
> Chime
> 

-- 
Rudy Vener
Website: http://www.rudyvener.com
Check out my latest story: Dwindling at http://www.starshipsofa.com/blog/2024/02/14/starshipsofa-726-rudy-vener/
Need a Limerick Fix? Visit https://limerickdude.substack.com

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

