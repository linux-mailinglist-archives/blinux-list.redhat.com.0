Return-Path: <blinux-list+bncBCVPTHE7K4IMVK7TVIDBUBFXMZJHA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mail.lfdr.de (Postfix) with ESMTPS id 372AF7F3332
	for <lists+blinux-list@lfdr.de>; Tue, 21 Nov 2023 17:07:40 +0100 (CET)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-679f232fca1sf2582606d6.2
        for <lists+blinux-list@lfdr.de>; Tue, 21 Nov 2023 08:07:40 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700582859; x=1701187659;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CbiPE0H8k3ST2U00y6bvDCN/jhQuVVSy1DWAg0fVhr4=;
        b=p7fAx2t8La+K8TQPdLnN/En//jr6cAPC9CydGeqdjvxMqS2Pqsq5AgStyN8dmjkoIY
         uQaphTfBjLbpEIqRNm1vEKcqKqMBtpB3Es8uV6wpoNv/FP0jkK4FKstSuSnmb4de72wg
         9OrpDC9aIFPt44mimA9chYRwjmovHdcHut5VS0JQu/4vPNHKPdXofhEqpY0z0w93GFxh
         tQRRYtoYae2sKjK208YW90TzY9KuBLfaHhwp1YEu5nVlzh7lOiauH4FMYi7OgHX3UidE
         AYwQFFIIs1Oiud0nEjU5wMWWBcrUlLuThdXwFhZTUAGmHBliudAj8Abj8xpP4rGZgWu5
         sV2g==
X-Gm-Message-State: AOJu0YweTeRDclUcQSPmxuinrc6CX6x4GdeZ3/St6e69bJYKPmWsjvO/
	lEjS/WiLdI187EXqWQI4IeA6JA==
X-Google-Smtp-Source: AGHT+IHCI88rjxz+6t1+F5NAtaLBmx29O2OU/bJbNhesxWnzYmIxOohB6RFyxL2tOl/8mxMQJdZBEA==
X-Received: by 2002:a05:6214:508f:b0:66f:baa4:77b0 with SMTP id kk15-20020a056214508f00b0066fbaa477b0mr13329326qvb.8.1700582858955;
        Tue, 21 Nov 2023 08:07:38 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a0c:ee45:0:b0:65d:b9b:f30e with SMTP id m5-20020a0cee45000000b0065d0b9bf30els3132473qvs.0.-pod-prod-03-us;
 Tue, 21 Nov 2023 08:07:38 -0800 (PST)
X-Received: by 2002:a67:fc4d:0:b0:462:85cf:b98b with SMTP id p13-20020a67fc4d000000b0046285cfb98bmr5917982vsq.26.1700582858209;
        Tue, 21 Nov 2023 08:07:38 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1700582858; cv=none;
        d=google.com; s=arc-20160816;
        b=NDLPQXZxWDnEDE4KP9F6sBiL1IYknhuSPs1fODi1Gs6I757FfWfwiDrDwX6S2Hl/9+
         Bs7yeIR2msB2PrWTMoj7RgWdf0SOZrUgPha//S69Zf23/DIQynXv9iKaRZ3/A8gXb2sy
         hzfDqswkkExnG/38hw8BVl9gachP+kFb7DZY83lp+k0HN/sXySveKEDnTWXZqkf8urqQ
         vzhK5ZmhyZIB5GmyPnOzCgL0cA1CEiA0uTZKxpOf6UROnwz0uKqwXQmVzlbbVz6YuG9g
         ROQkmjJGDLQK9/RCR8+61AM28jkNj8AHxueoWK1EaQSsTycD42R3bgt/Fh8+DC9Y0IrD
         dmUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:delivered-to;
        bh=CbiPE0H8k3ST2U00y6bvDCN/jhQuVVSy1DWAg0fVhr4=;
        fh=cL30EjZBkoCnqWfa4d+DnJuxEm0dAzBIJHzC/YnNBEg=;
        b=isEzfwkPG5Kkoow0gHmd24dXAoJOhIKM/1+ye6aHDHazuhcQCSg+WAFS3+dbkfYuOq
         DTv+tZwVIU22+fB1scRPwaF02sWyrXbVYExL5qc20jSC9fAuVoiVemr12Utt/r9YMMGG
         liLBNm1xgmFHedJDwrBGScfB3t0d3ssJ0Hra1QagqkQ6jZT3E7vrdF6zbPNH28GoKjzE
         bWWbHP0+w3ZcgvM+1qNDwH0uLMhS7S2z6MEXeaeXHvXoTejjMTBMzG3kgDhMJ4yeDruc
         Rfk4Wxue08BQx0Qt5EiNxf4fpIPtfuRJ/CTM87oMNtB09eYTsDX7GsvZ7Dtjy4jWNvK5
         iqlg==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [207.211.31.120])
        by mx.google.com with ESMTPS id jm19-20020a056102199300b0045d2355b377si1858690vsb.226.2023.11.21.08.07.37
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Nov 2023 08:07:38 -0800 (PST)
Received-SPF: pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) client-ip=23.24.6.165;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-481-zMLWzivGPrGfUp6qmFiJBw-1; Tue, 21 Nov 2023 11:07:36 -0500
X-MC-Unique: zMLWzivGPrGfUp6qmFiJBw-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com [10.11.54.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E87661019C8C
	for <blinux-list@gapps.redhat.com>; Tue, 21 Nov 2023 16:07:35 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id E58C12026D66; Tue, 21 Nov 2023 16:07:35 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast09.extmail.prod.ext.rdu2.redhat.com [10.11.55.25])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id DE7342026D4C
	for <blinux-list@redhat.com>; Tue, 21 Nov 2023 16:07:35 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id BCC8529ABA3C
	for <blinux-list@redhat.com>; Tue, 21 Nov 2023 16:07:35 +0000 (UTC)
Received: from atlas.bondproducts.com
 (23-24-6-165-static.hfc.comcastbusiness.net [23.24.6.165]) by
 relay.mimecast.com with ESMTP id us-mta-615-VRPgAMqeOWiwOI41Qb_FCw-1; Tue,
 21 Nov 2023 11:07:32 -0500
X-MC-Unique: VRPgAMqeOWiwOI41Qb_FCw-1
Received: from users.shellworld.net (users.shellworld.net [50.116.47.71])
	by atlas.bondproducts.com (Postfix) with ESMTP id 4485044FC9;
	Tue, 21 Nov 2023 11:07:31 -0500 (EST)
Received: by users.shellworld.net (Postfix, from userid 1005)
	id F2A601001AD; Tue, 21 Nov 2023 11:07:30 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by users.shellworld.net (Postfix) with ESMTP id F23051000B6;
	Tue, 21 Nov 2023 11:07:30 -0500 (EST)
Date: Tue, 21 Nov 2023 11:07:30 -0500 (EST)
From: Karen Lewellen <klewellen@shellworld.net>
To: Chime Hart <chime@hubert-humphrey.com>
cc: Harley Richardson <destructatron2018@gmail.com>, blinux-list@redhat.com
Subject: Re: google removing basic html access, alternatives?
In-Reply-To: <e4c20f48-32f9-751a-34a1-3426e6e01d2d@hubert-humphrey.com>
Message-ID: <Pine.LNX.4.64.2311211101130.3574401@users.shellworld.net>
References: <Pine.LNX.4.64.2311201725230.3562522@users.shellworld.net>
 <20231121000352.GW23130@nntp.AegisInfoSys.com>
 <Pine.LNX.4.64.2311202007280.3564917@users.shellworld.net>
 <20231121024247.GX23130@nntp.AegisInfoSys.com>
 <Pine.LNX.4.64.2311202159420.3566012@users.shellworld.net>
 <20231121035449.GY23130@nntp.AegisInfoSys.com>
 <Pine.LNX.4.64.2311202309160.3567236@users.shellworld.net>
 <a37d8eaa-1824-42d5-8a32-75bf17a906f8@gmail.com>
 <Pine.LNX.4.64.2311211022030.3574401@users.shellworld.net>
 <e4c20f48-32f9-751a-34a1-3426e6e01d2d@hubert-humphrey.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.4
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: shellworld.net
Content-Type: TEXT/PLAIN; charset=US-ASCII; format=flowed
X-Original-Sender: klewellen@shellworld.net
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of klewellen@shellworld.net designates 23.24.6.165 as permitted
 sender) smtp.mailfrom=klewellen@shellworld.net
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

Chime,
And that is something I do not personally understand.
freedos and djppp, both editions of DOS still under development are not 
kept there by individuals using adaptive technology.
Instead, they are there because many people want choice.
Elinks when compiled with the options, provides a blending of the 
graphical and the text. paypal is treating it as my default device for one 
of my accounts, no more captcha.
Links can create the best of both worlds as well.
So why is there not a port of Thunderbird or another email tool that 
blends the best too?
Creates enough of a progressive enhancement factor i. e. basic html, then 
builds upon that for interfacing? That helps mobile users who are not all 
able to get apple or are unhappy with android items.
Kare



On Tue, 21 Nov 2023, Chime Hart wrote:

> Well Karen-and-All, I think there are no non-graphical ThunderBird 
> applications, so I wouldn't think that would be an option for those of us in 
> a straight commandline shell.
> Chime
>
>

