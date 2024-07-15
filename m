Return-Path: <blinux-list+bncBDGI3AUYYYCBBFGZ2W2AMGQE75W7DJQ@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mail.lfdr.de (Postfix) with ESMTPS id E8161931A6C
	for <lists+blinux-list@lfdr.de>; Mon, 15 Jul 2024 20:38:13 +0200 (CEST)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6b75e880a12sf43392876d6.3
        for <lists+blinux-list@lfdr.de>; Mon, 15 Jul 2024 11:38:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1721068692; cv=pass;
        d=google.com; s=arc-20160816;
        b=jZc2lOORBKLRzDJnljI58JmmrTNfqTZlVwQjUsHDNU0lfle37Rpr3XGIaSSXfDORhl
         2NrTwzvAFiRy1ZwqGVKB03orpjlFJGHHHQkr/etyzFqpHefz8fDMVXWz2uJSL/IVFYFV
         jsvZIdYjKpOUhzJNFFbEwRI9TKF2r7MlvDyyWa4KEfS/0s3A6TwwRp3ekiKTQFudLxVC
         pO/TaMeie5jdUDRGgF3GCHc5C38Nrz+04hLHYIFKPRcusCleRClbBjlJ35G4v5zCNQDt
         pYFirQ6kx3XcVDUP44mt90+BWze2E8V5KwE5hCj0Lj7+HySf5ZzjSwL67+CTT0p1cvoj
         ttgA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-disposition:in-reply-to
         :mime-version:references:message-id:subject:to:from:date
         :delivered-to;
        bh=3o0jj+DeELAkLV9YMsjMH9iPnOSl6qQm/n0pfMd7Yow=;
        fh=G3Yg1uwzDnwZIjes99Mmias15zC4S72HNyEDsthP0GM=;
        b=sPJ1wI8qDRyEPXJj5L5/hMZHyZg03whtWYgKCuUa0+2bk4z88Nn80ORLfpsC/TMs+v
         klOs4DoZj/Be4XnuWvuFKlM8WrvMqiZrIUHE5eP3yGbrFvszBn54sjNxOc3U+HNFZC/x
         MjYU0FEebe5pmdpU8ckAS65zivTqjZ45uNm8i79QKqb/kXQ1zzLfqEkOOEsq1NsQOEKp
         7Uomhhjo3EXW/2RmwCxNVYYGW+C4j/XNkMyUjIGkWdvypq8Kxl0Dk40w7KVn68EreNIO
         rP6lG1SvXJ6qsrQVPQ46eeBW7EGHmxw6oP1gOyzZ+xIKtXP6n5MKMylgI1RSTtblcID6
         SpBw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of salt@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=salt@panix.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721068692; x=1721673492;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-disposition:in-reply-to:mime-version:references:message-id
         :subject:to:from:date:delivered-to:x-beenthere:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=3o0jj+DeELAkLV9YMsjMH9iPnOSl6qQm/n0pfMd7Yow=;
        b=nASiVm9X/uVJ0zcqekkb531ywrAiA5o0rIzRDGs6tNYCfx/ypB0ith3Ym9iuwiPwWv
         hP6NS7O13xwZ9P7TdWebYRO1wWE1ApBWEzN5cKQW/aU/xx8+jIg+/PEnOLVVJQR2bd8C
         ub/LicEytSZTtG2Abg+4MDFd2LFDUq5xDCNFVm4vnT5aIVodG22PbGeycy/MbUolj8wo
         9vV1KZa6FvYFbX07Fny2cGKA19VMosKmNCDK0z7eJVow4zUME408mfD1PNMWq2zOXZBu
         gt/qmDLTi3boGnoUdGhwXbuf1a9uFMjxprA83s8o9wQgqjxqGUmTpy36QKnP3LGE2IXN
         QK3g==
X-Forwarded-Encrypted: i=2; AJvYcCXInC7vZmARAiOlkwBLL17ROf51QeJqLuiNcsdbDz84NQUpRA+P++ZBpraA8xWvIxJrvX2iiUCjo0wn+1ouNTULEEvREb+4JBg7
X-Gm-Message-State: AOJu0YwPWuC5LFomlDuKrs9PMyHH616V9f97M9kP6Y6FdrhTx7Djrv6/
	2Xe4Z5wzeX95o93gH2k9VQib+sv9On/AjB3On3JBPa+hOrirwuImcOV0pPo9u0g=
X-Google-Smtp-Source: AGHT+IFxi+RzcHtJByFT5L+ujRnxPbj2SWjiysenMMLuxPryhfL0d1pBctz41GDvj6e6Cxu78SI4+w==
X-Received: by 2002:a05:6214:458f:b0:6b0:5c89:a870 with SMTP id 6a1803df08f44-6b77f5b41b3mr652456d6.37.1721068692580;
        Mon, 15 Jul 2024 11:38:12 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6214:a44:b0:6ab:8f81:8496 with SMTP id
 6a1803df08f44-6b74b43b1d6ls77215626d6.2.-pod-prod-01-us; Mon, 15 Jul 2024
 11:38:12 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVN/nK9T7r4XKdAH5L7P+tpCComhAQjFULOMUETUsiK5+ni9UhLQ7dpI4Oq5ZuUyL4smNFuY0PpUya0NUxfHUkWnoxW+Bhf5ShV27y6
X-Received: by 2002:a05:6214:3012:b0:6b0:76e8:921f with SMTP id 6a1803df08f44-6b77f60b770mr470536d6.60.1721068691830;
        Mon, 15 Jul 2024 11:38:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1721068691; cv=none;
        d=google.com; s=arc-20160816;
        b=Jx1GvycV5yeiC2wS3HEAtnGvhtazMmESxPBb4zfSa/4s52xPz1hmhxd7D3BBFSPYr+
         33DtkyqJvLEu/PAWZjWveJcX/fNvNf+cMZt0F5Da4idfiRKe/fF1qPJ/QQgRfmG7yAEX
         Tjul2zPitvnQorr9JQ+rKt28LcEANmYuCaKEYHynm5exLpcq2AHCV+3IsBWtkE+i+FQr
         J3PCHsGJ7NirVUlrGn2xom2QVBfRdVJkVX3yTyRPhXypgVv9C2XU+5mwYaskbCUkb3xk
         WE6UqhPlUGnO8Bt6DrwHy3IoE70Rl5AgT1bJKXM6lBSb77ApGjhx4S9Y1c6PEZvlnPpo
         wTIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:in-reply-to:mime-version:references:message-id
         :subject:to:from:date:delivered-to;
        bh=mXRei9e3ejZ8XjsHVD+lk/Gqm0F2Iss+YG56HaCbFJo=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=TRafWbquOdoD93QU4fPWzJDaQvjBqRz7d9mM8e+G2Q17ngf8jLe/e7452EEn3JKMA2
         Ai5WomjkbrCOJq6cjh7ZDu+h/1chRTLMDmjVbAgQCDBdx6qVi6CnG5i+ZFpKzqZvLvmg
         zXkYDgyb1JBDDewJkqwmzx2NOYi+Q804iJ3KCfXXJMbOd3HqTk4w3AGn7n3zX0mXrAHi
         j4EXJsZxJgEoFdXOdyxkFlygzmNEd8AmDNCW2ITiz8rP2LBxA82OlVrwAM1Nag3asf+S
         HcEwSWqIuH3gTSfic/suNZjc0IbSBEzrxf5w/GjgXJ5Qp5uLSxo4ziFRqlN1tpLPKgIs
         FOMg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of salt@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=salt@panix.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id 6a1803df08f44-6b761a02b41si59912136d6.288.2024.07.15.11.38.11
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Jul 2024 11:38:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of salt@panix.com designates 166.84.1.89 as permitted sender) client-ip=166.84.1.89;
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-139-mUghBBTRP3O5-fLxow37sQ-1; Mon,
 15 Jul 2024 14:38:09 -0400
X-MC-Unique: mUghBBTRP3O5-fLxow37sQ-1
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id BE37419560B3
	for <blinux-list@gapps.redhat.com>; Mon, 15 Jul 2024 18:38:08 +0000 (UTC)
Received: by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id ADE62300018E; Mon, 15 Jul 2024 18:38:08 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.49])
	by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id AB429300018D
	for <blinux-list@redhat.com>; Mon, 15 Jul 2024 18:38:08 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (unknown [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 17ED619560A2
	for <blinux-list@redhat.com>; Mon, 15 Jul 2024 18:38:08 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-381-dBCxs4cDOdaXi4RDT6Iucg-1; Mon,
 15 Jul 2024 14:38:05 -0400
X-MC-Unique: dBCxs4cDOdaXi4RDT6Iucg-1
Received: from panix5.panix.com (panix5.panix.com [166.84.1.5])
	by mailbackend.panix.com (Postfix) with ESMTP id 4WN9th1JZXz14Dv
	for <blinux-list@redhat.com>; Mon, 15 Jul 2024 14:38:04 -0400 (EDT)
Received: by panix5.panix.com (Postfix, from userid 20196)
	id 4WN9th1906zfYm; Mon, 15 Jul 2024 14:38:04 -0400 (EDT)
Date: Mon, 15 Jul 2024 14:38:04 -0400
From: Rudy Vener <salt@panix.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: how many Linux machines do you run?
Message-ID: <ZpVsjEiFpqkXVjqY@panix.com>
References: <Pine.LNX.4.64.2407142337570.3536958@users.shellworld.net>
 <71972198-e2e4-9aa4-ffa2-242ad9e066cf@hubert-humphrey.com>
 <Pine.LNX.4.64.2407151356560.3547821@users.shellworld.net>
 <c9f7d2a9-5da2-1cde-7cfc-a1ccd83d2128@hubert-humphrey.com>
MIME-Version: 1.0
In-Reply-To: <c9f7d2a9-5da2-1cde-7cfc-a1ccd83d2128@hubert-humphrey.com>
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

Cool! I just ran bash, hit escape four times, and was asked:
Display all 7,367 possibilities? (y or n)

Needless to say, I hit n.

On Mon, Jul 15, 2024 at 11:09:30AM -0700, Chime Hart wrote:
> Well, Karen, last I knew in bash, you can hit escape 4 consecutive
> times-and-it will ask if you would like to see a number of packages? It
> actually tells how many. In my TCSH the 2nd press of escape beeps-and-begins
> mentioning files in my home directory.
> Chime
> 
> To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

-- 
Rudy Vener
Website: http://www.rudyvener.com
Check out my latest story: Dwindling at http://www.starshipsofa.com/blog/2024/02/14/starshipsofa-726-rudy-vener/
Need a Limerick Fix? Visit https://limerickdude.substack.com

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

