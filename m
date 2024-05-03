Return-Path: <blinux-list+bncBCNJV2PYXEDRBQVW2OYQMGQELQSLMJI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-oi1-f200.google.com (mail-oi1-f200.google.com [209.85.167.200])
	by mail.lfdr.de (Postfix) with ESMTPS id D91FE8BACA5
	for <lists+blinux-list@lfdr.de>; Fri,  3 May 2024 14:40:36 +0200 (CEST)
Received: by mail-oi1-f200.google.com with SMTP id 5614622812f47-3c82c701f5dsf8414825b6e.3
        for <lists+blinux-list@lfdr.de>; Fri, 03 May 2024 05:40:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1714740035; cv=pass;
        d=google.com; s=arc-20160816;
        b=m/ewxifejsNKu9q7z254prvyJYi1jyxgvYZmx2Q1oy1f3xN95r7HnJt2ni9PIJQKmh
         Ad181BzFRx0dFwUyJf6pwc7VwHFrfA+yfBPw0jgbpNj/NYmTmAFZRBhpI8recXYfIxdB
         tv5kSr0GLFTC21MZrz5VHlHHE5OdDzpznxtIDzEHcjnMM2ZBBFNyq8vMDxHBgth7QPZx
         U42Q37lDzkXM/vfogOzSl4NOyYd9i9Hfe0FuSB6yIv+4sszNt82ImWPLNwknAlo/Bxh0
         GkUOQttea4qcadBMsjZle5R/HhgLzMstZeKuGRbqlyz/zyPeMsdjo6GO/ZWf7GAjjAjL
         NTsQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-transfer-encoding
         :content-disposition:user-agent:organization:in-reply-to
         :mime-version:references:mail-followup-to:message-id:subject:cc:to
         :from:date:delivered-to;
        bh=c5JumTJcCjPPb3DMDq0gYqS4oNcLajVbLGNPBw3124U=;
        fh=HcejZu9ZNnO5po9+s08bmkpCY3hwj+boWGQH9+TEoD8=;
        b=a+jwe55a1s5jgpk4ti5qqlJkzwZ+6hqhpB943xNvQNO9hNcu9TULXibE16/k+ec1oI
         YG6gHYgJA6SjhDL/oWMINa+ElWzOnH1DqPTCvHSMOeX27s5DoIVf81syhYa+Z4uz9HYp
         M/zT+82WN3yAcIw6pRTJNF7E2BNJK7wkcUD59eFjonEnOnvqRvKGTkCsFXw9hcGN91u2
         9Ka7aoX6HZrOW6/oa4MEW5AbtyQ1kNB7bpm4kggIc4aiFLd0jc2ng7IxM41q1MyxR6Wh
         zSILNoXFnkLe88whMsbkzRZkMebE0mfu7TFbGs3MBlG4bnUqdqr/P4uy5RJbR+jowQ6x
         e9Jg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of srs0=ykl5=mg=ens-lyon.org=samuel.thibault@bounce.ens-lyon.org designates 140.77.166.138 as permitted sender) smtp.mailfrom="srs0=ykl5=mg=ens-lyon.org=samuel.thibault@bounce.ens-lyon.org"
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714740035; x=1715344835;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:content-disposition:user-agent
         :organization:in-reply-to:mime-version:references:mail-followup-to
         :message-id:subject:cc:to:from:date:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=c5JumTJcCjPPb3DMDq0gYqS4oNcLajVbLGNPBw3124U=;
        b=vCU3XwgHjtCFqRFrETkMfUXLuUBcoPcdA64nmZdzxuBGMeC3EoC8dQ8StSBL3NGzn4
         kSOMelPz1qCAmkKtKvYXDf0a+c+38ibMdLD0eE8y7EDceWbWjCkpvThIhW6mKcgqbY/0
         +vnxz2AhMp7VldlVfgpsYminzXOZ3j3kNOhwU6wI4OhFZXaOZ3USdf8KzMsVOJt7/z0H
         ng48DRvEgaIavXbOoaErv+stbjxaFenekMsfLWIVmXR4acC518WRkiK4Msb9VpywSXnw
         /LSerIPniA8biASoZ3/mX9oucPy6kXwzJJUTQZ6RkgLnpl3yUHtQrZCwFqZKeg5IN1H7
         Clrw==
X-Forwarded-Encrypted: i=2; AJvYcCWnFpohIRBzHLpBwDBq7evL+9u29xG4I9q+X80MQLUlZxHACeLboCYg5LuElMP2IXtqpVc8zNjOuaBhG+PWkrbwZj2kNhtgSJJ/
X-Gm-Message-State: AOJu0YzR02HCUWdi5K2C5fYym7vlHw637xrl2oHzo13qlZjNkkDnfq2C
	EimPLZtUPlY9/HlYJD5oQyJ9ij2J3aHPXAf5XXny2EiBcKNZFEE2JIuKsKjDPoc=
X-Google-Smtp-Source: AGHT+IG+A9p5Zn2ILyU8hkppFa0IrPLdC8SoEe+3yamzBIQyrQDkFXsTktd2ITRfeQYUFU/HaobfIQ==
X-Received: by 2002:a05:6808:11c8:b0:3c5:e23c:cf3c with SMTP id p8-20020a05680811c800b003c5e23ccf3cmr3390208oiv.42.1714740035113;
        Fri, 03 May 2024 05:40:35 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6214:5191:b0:6a0:7a41:267 with SMTP id
 6a1803df08f44-6a0ff010994ls17889946d6.2.-pod-prod-06-us; Fri, 03 May 2024
 05:40:34 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWG3xykNufKqhiZ2gx2dZmhBWXIevEnT6chB+oKgelkEMQptSBH6fqo9hg+32Q6xr5b7xrOF3IW/KyFwuaMKIzhAA9b8MaDvzxPALIe
X-Received: by 2002:a05:6122:99d:b0:4df:2303:3b79 with SMTP id g29-20020a056122099d00b004df23033b79mr2430422vkd.13.1714740034121;
        Fri, 03 May 2024 05:40:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1714740034; cv=none;
        d=google.com; s=arc-20160816;
        b=Dbn7vNDGE7HWk6VXDeJU7Q0uRZJTMDrQcbApH2tnYTqxLwLB4ZCsUagY/z9nIda2fF
         lXjYGqhPutf7toCls9naHsIU82hg8Cr5B2jm+3mUsE0xv+XJ21pUK5achJQT2I0qSOIG
         Nvg5biAY5C8Cx5UKNKAjDa6IxWz0DgMG1NW9/vJgrkH/Z30oqXF7V+lSMwQ3cJhYrGHV
         L07B51gO/NM/GQGsoqFeBr1lGODRWNy6uVeLht8O13/ntCSQtJBk4MTXn+qcrmObyRUq
         bouDwBFj3zPblTHLJVusx6QakWsEXjv0+yubJAZSz9w187b7EqW58/YGzH1Wd9PI57K8
         d7fA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-disposition:user-agent
         :organization:in-reply-to:mime-version:references:mail-followup-to
         :message-id:subject:cc:to:from:date:delivered-to;
        bh=Uwp2qngUeL1Dw907oFxPeY7Ja43VkDjbEQ2ZKXTMiKw=;
        fh=x0HVBJP64k4SriRDpNTQg5OkPvzs01G+nFJibb/BCzg=;
        b=tCWsIx83KtkmAz1mMynSersz7KfpTLRYeBUrBAmDPJjqPNkUwULugVpClQx0Ee8fI2
         UyR6IdeUo5uZ/ZmAwfCCIu7nigLp32vW1ZCZsNRhlxAU0/0/W4+mcZWfg92qDMQxsACi
         1sA+gUcplcXd/0Xxv5wZtJKWqjQa9OoezgzjO5YlA5kz14RUXtVHlc1O27FRacAo7DGH
         gPOMDMJQbgqdwiqOpXrPegazT/VWXNG86sXz4p6oRqQ6SddeqkCSRNEW1sN/530zBUpb
         j4HMufcOo+igoUQVca/q5zWz8j32TqVLVrO4QDx3izYHbZ9vOMB7CoZahr1kfkWE0wOz
         k8oQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of srs0=ykl5=mg=ens-lyon.org=samuel.thibault@bounce.ens-lyon.org designates 140.77.166.138 as permitted sender) smtp.mailfrom="srs0=ykl5=mg=ens-lyon.org=samuel.thibault@bounce.ens-lyon.org"
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id y16-20020a05622a165000b0043aae35870dsi3267738qtj.280.2024.05.03.05.40.33
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 May 2024 05:40:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of srs0=ykl5=mg=ens-lyon.org=samuel.thibault@bounce.ens-lyon.org designates 140.77.166.138 as permitted sender) client-ip=140.77.166.138;
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-313-9t9r4PznOt--sK9civ0MNQ-1; Fri,
 03 May 2024 08:40:31 -0400
X-MC-Unique: 9t9r4PznOt--sK9civ0MNQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com [10.11.54.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 6665A29AA2CC
	for <blinux-list@gapps.redhat.com>; Fri,  3 May 2024 12:40:30 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 62C53AC68; Fri,  3 May 2024 12:40:30 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast07.extmail.prod.ext.rdu2.redhat.com [10.11.55.23])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2ABAC6958
	for <blinux-list@redhat.com>; Fri,  3 May 2024 12:40:29 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id ADA693C00085
	for <blinux-list@redhat.com>; Fri,  3 May 2024 12:40:29 +0000 (UTC)
Received: from sonata.ens-lyon.org (domu-toccata.ens-lyon.fr
 [140.77.166.138]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-146-hpqoEW_DMdqpd-JvbuXhgg-1; Fri, 03 May 2024 08:40:27 -0400
X-MC-Unique: hpqoEW_DMdqpd-JvbuXhgg-1
Received: from localhost (localhost [127.0.0.1])
	by sonata.ens-lyon.org (Postfix) with ESMTP id A7D5EA0331;
	Fri,  3 May 2024 14:31:18 +0200 (CEST)
Received: from sonata.ens-lyon.org ([127.0.0.1])
	by localhost (sonata.ens-lyon.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6LFXSktvIUyL; Fri,  3 May 2024 14:31:18 +0200 (CEST)
Received: from begin (nat-inria-interne-52-gw-01-bso.bordeaux.inria.fr [194.199.1.52])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by sonata.ens-lyon.org (Postfix) with ESMTPSA id 8A064A032F;
	Fri,  3 May 2024 14:31:17 +0200 (CEST)
Received: from samy by begin with local (Exim 4.97)
	(envelope-from <samuel.thibault@ens-lyon.org>)
	id 1s2s4L-000000014aU-0zGH;
	Fri, 03 May 2024 14:31:17 +0200
Date: Fri, 3 May 2024 14:31:17 +0200
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: Elias =?utf-8?Q?St=C3=A5hlberg?= <elias.stahlberg@harrastenurkka.fi>
Cc: blinux-list@redhat.com
Subject: Re: nvda2 speech and debian install error
Message-ID: <20240503123117.6vhsfjpfuhjgwxno@begin>
Mail-Followup-To: Elias =?utf-8?Q?St=C3=A5hlberg?= <elias.stahlberg@harrastenurkka.fi>,
	blinux-list@redhat.com
References: <2aafa8d0-f421-42da-9178-fcfbbf5a5a1a@harrastenurkka.fi>
MIME-Version: 1.0
In-Reply-To: <2aafa8d0-f421-42da-9178-fcfbbf5a5a1a@harrastenurkka.fi>
Organization: I am not organized
User-Agent: NeoMutt/20170609 (1.8.3)
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: ens-lyon.org
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: samuel.thibault@ens-lyon.org
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of srs0=ykl5=mg=ens-lyon.org=samuel.thibault@bounce.ens-lyon.org
 designates 140.77.166.138 as permitted sender) smtp.mailfrom="srs0=ykl5=mg=ens-lyon.org=samuel.thibault@bounce.ens-lyon.org"
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

Hello,

'Elias St=C3=A5hlberg' via blinux-list@redhat.com, le ven. 03 mai 2024 14:5=
2:36 +0300, a ecrit:
> I am trying to compile nvda2speech for debian,

nvda2speech is already available in debian non-free, you don't need to
build it by hand (so you don't need to determine which exact magic set
of versions of rustc etc. is able to build it)

Samuel

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

