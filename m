Return-Path: <blinux-list+bncBCV3N6GOXMCRBZPWX2WQMGQES4Q5OSI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-oa1-f70.google.com (mail-oa1-f70.google.com [209.85.160.70])
	by mail.lfdr.de (Postfix) with ESMTPS id D1ED4838F84
	for <lists+blinux-list@lfdr.de>; Tue, 23 Jan 2024 14:13:11 +0100 (CET)
Received: by mail-oa1-f70.google.com with SMTP id 586e51a60fabf-20461f367cdsf2883963fac.3
        for <lists+blinux-list@lfdr.de>; Tue, 23 Jan 2024 05:13:11 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1706015590; cv=pass;
        d=google.com; s=arc-20160816;
        b=vRJG7BbWQ7dPIKgrQPEqws2U/YTwhDSBWHQuWQIGmiKZChk46etDGz6I6vPms+QWwb
         9X4mL+cz3yfdLPvJMpdeNFpEFfW8TTlLMsMViywEJCBhCrGuUIDsM2gy4O3CIwUwcx6h
         7YmQVeONf8ov3k1F9RIk6pyV/h2d7mcm0rGd3GwcQ65F1mP+ImxRPwRYp1bv2Zj5HVRS
         B6xnVjoYxBAlFU/9S3kNNvRms55ZC7z3YaLYzQnZtPBcL87qOPQUPnejuKXn/+W7Kmtw
         q5SAi2ZJb0Z8NcTaoh373xcMCpZVuKyUulAf5K2RhzUuHdt1eOvSsLFzm0kPkhgZc3Vb
         Uvuw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-language:ui-outboundreport
         :in-reply-to:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=UbAxCCQTC599dquK/mj5B/upAiL/3M6yp4Awz3JVFc0=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=o5hAnySO4gc+fyVz2DyX6swPi57zCoN3CMafTbGwntefT35qr7q215CCMFgrnLthx1
         r6Q/OYf6im6l2DjKEhvqomXwATCz/wflMVUx9lcoFz7YpjsbM+Bn+Mg1LwQliZJ3ig5l
         /XLcfya5BvDFcobM4mCSaX8RJMeLclBvdDA6LSyMWG1slVLoaB1zSyb9fVGDS+NZ5DTn
         LLClmQOYQy9sQIubiobZvpSiOtJjBZW7tuWZkCZ0/KuwbtBzG5SrvPrXNHTI6EBlVXnA
         jbUaC2WamC+SUn09eQEPs88FA3DaSEuu0cXd/GDmREX2E5AXq5BRtGGpPTiOoNvpboMk
         IhHg==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of kyle@gmx.it designates 212.227.15.15 as permitted sender) smtp.mailfrom=kyle@gmx.it
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706015590; x=1706620390;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-language:ui-outboundreport:in-reply-to:from:references:to
         :subject:user-agent:mime-version:date:message-id:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UbAxCCQTC599dquK/mj5B/upAiL/3M6yp4Awz3JVFc0=;
        b=q0egv8WIOlxCTrUsT+WxNR+ll25uu/YxQ7IHjJ1a0LVUpE6q1XFYzAlOM/1buJnmXC
         hyeKeoUZvm40vcZv0njKPPEjmIIY0BXlBXogbYi9Gffd4V1/piBxcVUSZ60hNRR1YV76
         5PXZSjlSNWCRQXRTr+Tumz13GEh9Zw/Clwv0pMmGLbxoYy7hob8AAjgyEElWIq/WoZ2v
         vTSUbRWiAN4rDgGUCmYVWc8SsWlwcNi+P7dBTV4BOW6LQ2Cez0ZnSwG4J3YZOqlMgjYR
         jfoTawHy8AgMMoz5hP9TwKNC8TXZQ0T7dViiCXZHcAa2v9YRLH/SVZKZmLCbpiplpINZ
         9MIg==
X-Gm-Message-State: AOJu0Yw2TxpjuvzMdG+x/jBRJoXvvT99M48Mem+nIiGYCIBe6LdYCx8M
	ipGqcCfLAeWGM3mTn4LtUG7xOWeD3gO8KPpDh9CosQqO9Bt129IRZ3pd3ElX8IM=
X-Google-Smtp-Source: AGHT+IEJjdzLfmlxcCueheUO6VJ5Qrynzc864TIUuC2zv4KzKqONdFvlFB9+JzSdp1W3JNLM3/U8qw==
X-Received: by 2002:a05:6870:972a:b0:20e:364b:eba9 with SMTP id n42-20020a056870972a00b0020e364beba9mr1422693oaq.9.1706015590208;
        Tue, 23 Jan 2024 05:13:10 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6871:b1f:b0:206:8391:ee4e with SMTP id
 fq31-20020a0568710b1f00b002068391ee4els3395320oab.1.-pod-prod-06-us; Tue, 23
 Jan 2024 05:13:09 -0800 (PST)
X-Received: by 2002:a54:4414:0:b0:3bd:97a8:4a02 with SMTP id k20-20020a544414000000b003bd97a84a02mr2969134oiw.50.1706015589367;
        Tue, 23 Jan 2024 05:13:09 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1706015589; cv=none;
        d=google.com; s=arc-20160816;
        b=0Ikty9JKgKuPIVqF8JFatZDTNNZK5c8fOuE0CCILcpgm0Aa4gmiOHQEB+eG/CnheIE
         8vXHmdjKReWtm40rjoHnj1EUv4C4ph5g3CQpoHionx5sww0QnbexZ1Ih4PT41efNio1l
         xyf7a4diE8p1r/Ft4iwjk+IJeSY0X9f/MfCAkXDRLudX5SDZ0GFBouLHz5ZuKIsE9Fov
         M3OxkQ2BR2LofFbTZ84XXPtzP05wVHENsn/snsaas0530r0HbWA7pd0wZ0J9xp9iCGN/
         M7AiBOXucOIpgROJ9Q7doJ5Pe6m2hLIcP5AfUiDAZ0hfGKAMCAFjsYJXeWKPl8t2QxrK
         SeUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:ui-outboundreport
         :in-reply-to:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=OF0cg6PyPV7zPbxctZllU/Y7+G84D+E0CCbP3I5sURo=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=SP9HUtVROqfG8AMQzy6eJnyjyvDMGK1DZoOs5BfmWcdTXBr2JRDSReedeBKb6Rbq+8
         kHocrbJHYDzWGmrE2XFf2ZeR5mL0YpUH7wi+sQ6cwhXvBAU2hDJKbccZUJ4CmNLA+aBz
         V3xJN8d6SlRGBpTUkGdfNYuZdPQDQ4JtO3JrHVpFfg4Syn8+5IWfZ7Sc+JJIc9NgemoV
         oBZMGLvOCfsruGcuroNPP9ygC90sy5K9gNS+m+McN6ZVtmFiDaMgfmaHJkmb+FzTVBzn
         zdQ3XBmHEh0/D2zra0v836RQzJenQJCLAaFDqxT8AW9kZ+7cCveTOpjPMGn1JLZjYrXW
         zHyw==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of kyle@gmx.it designates 212.227.15.15 as permitted sender) smtp.mailfrom=kyle@gmx.it
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [207.211.31.120])
        by mx.google.com with ESMTPS id p26-20020a05620a113a00b007839d7d59d2si4781054qkk.144.2024.01.23.05.13.09
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Jan 2024 05:13:09 -0800 (PST)
Received-SPF: pass (google.com: domain of kyle@gmx.it designates 212.227.15.15 as permitted sender) client-ip=212.227.15.15;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-397-7f1YcThRPE-gUZLZL3SuWA-1; Tue, 23 Jan 2024 08:13:07 -0500
X-MC-Unique: 7f1YcThRPE-gUZLZL3SuWA-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com [10.11.54.6])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4C65E85CBA7
	for <blinux-list@gapps.redhat.com>; Tue, 23 Jan 2024 13:13:07 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 49B8F2166B33; Tue, 23 Jan 2024 13:13:07 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 422AC2166B32
	for <blinux-list@redhat.com>; Tue, 23 Jan 2024 13:13:07 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2035285A588
	for <blinux-list@redhat.com>; Tue, 23 Jan 2024 13:13:07 +0000 (UTC)
Received: from mout.gmx.net (mout.gmx.net [212.227.15.15]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-568-1cZ3BvTqNDuKj-9n1d65qA-1; Tue,
 23 Jan 2024 08:13:04 -0500
X-MC-Unique: 1cZ3BvTqNDuKj-9n1d65qA-1
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from [10.0.0.20] ([136.54.145.217]) by mail.gmx.net (mrgmx005
 [212.227.17.184]) with ESMTPSA (Nemesis) id 1N4hvR-1qzqFF0kbv-011nBB for
 <blinux-list@redhat.com>; Tue, 23 Jan 2024 14:13:02 +0100
Message-ID: <749d2605-3fee-4e81-bb35-0f9f6e36e68c@gmx.it>
Date: Tue, 23 Jan 2024 08:13:00 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Linux e-readers do they exist?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <Pine.LNX.4.64.2401222334260.324573@users.shellworld.net>
From: "'Kyle' via blinux-list@redhat.com" <blinux-list@redhat.com>
In-Reply-To: <Pine.LNX.4.64.2401222334260.324573@users.shellworld.net>
X-Provags-ID: V03:K1:CTji3nRQoErJu5TzzvUD6lOw4a0Nn2cJgptOnu9x0ZwR2IKWp3R
 7E4iawWwaF7x+uucKjEa2Gg1FYNBtx524nXc4aal131Ls/3JImPxwkiXRxSkRZXzzaxdELR
 6ILwdDXfwB6Tk69P0Cj4ztk6BihXkSvxZjK+PmxxplKWlsuHUZrbBujRfsi9mYHzrElxZOe
 nmhuPXKCIdayiiJNekekQ==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:uNq+ARjTrNM=;MmWWtVTvahtDw2wbHg02dN/8pDM
 yz90UQ0FhZQ6xUL8HedQI4yD4ztTtJtrOPYXF2u95uSXbZrHoTJm6fcQu1CroXU8ejLIkMlLL
 hxaznvwb6VAb8qnAilI3/gKSh28ztisbt2B0aNtdO0L2/nZ8zfVSLBs80KsffbfCBJmWD8x4B
 +QR9tHBQ0RjcNN/ovCUCXeXrggOmS0PhOnd/G+gkWe6Ko1zJ/pH14kAgmDwJveueiD3hSszWK
 8seEqQdjyr4jSYZNayOK+b8V6LBTUfcAg2jJWkN8uJr1qXXpI9eOUDODr57rjEt/nQENcPTZN
 0dR3LzRteqeb4572KbtyMLt++WQWXi/0oNWJbxmmoVf3JUIMbCOtzH+LwlsQQn0Gqay73jvuH
 YvK+oggWtLCBQyxbGDKlbrpYTMeq8v0uoJbbThmJZO6Ggoi6RoIMWcwApMfmNvTFx6xAMLDHJ
 vOQDkRJESvAHsrMJhgaqV9h49UKW1BWdcYeE/gZ1G6yY0r7IPxNNFW35Q722jfuEtu+HkcYXM
 eCoDCFAkLosH6ZchCOLGLA1IsTILr9PL8Xevz3FjeCa34bh1bjqrRAEjwpquBgxKoSnp8pxAw
 wpFIn2ge1RpnK4vWbHNmqjptR+6MX3rJnZ4oDmuxCcirnJbfMvwgWQkAIWo34dqQrbEvIOrdt
 dQO2TJ1vT7w1a1zkXVH7GorN0aKr7DNTr5o1MqIrEcmJiMvXpaOTvb0nduXRDFPvYCtpsPLN5
 0OPmezhm7GNYbgdN/EVKZf+UnBQ0PJy7D6mDfHsK6KKIjFUnWAzl8h9KDQrfrBpA5k0DyBf6e
 a3iFKfin7mOStNhJ9XjtW1sO76UgkMjP/MKt0BjNkaFShL2MIzkWXYD45IPtPN7dyZQMfo3sR
 6xwyCxcn7ApdGOt+IfFqzC/BMThfMLkc3S6Dfjp40fpH6xKmmpq5794EYzG095mWI7auKe186
 bM1Uog==
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.6
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmx.it
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: kyle@gmx.it
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of kyle@gmx.it designates 212.227.15.15 as permitted sender) smtp.mailfrom=kyle@gmx.it
X-Original-From: Kyle <kyle@gmx.it>
Reply-To: Kyle <kyle@gmx.it>
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

I have been able to get a Raspberry Pi 400 connected to an external
battery and running the MATE desktop via Stormux. I have DECTalk
speaking on this machine. The only thing needed is a USB sound card
which can be purchased for under $10. The whole system shouldn't set you
back more than about $150 in total, and that would include either a
256GB or 512GB MicroSD for the OS. I think the worst problem I found was
some latency with DECTalk, but it seems this was fixed in November,
though I hadn't pulled the git in some time, so haven't tested this fix
yet. Hope it helps.

~Kyle

-- 
You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

