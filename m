Return-Path: <blinux-list+bncBCS6LGFW6MFRBRWH5XFQMGQEDRHRRZY@redhat.com>
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0C9MDspje2l2EQIAu9opvQ
	(envelope-from <blinux-list+bncBCS6LGFW6MFRBRWH5XFQMGQEDRHRRZY@redhat.com>)
	for <lists+blinux-list@lfdr.de>; Thu, 29 Jan 2026 14:42:34 +0100
X-Original-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-x848.google.com (mail-qt1-x848.google.com [IPv6:2607:f8b0:4864:20::848])
	by mail.lfdr.de (Postfix) with ESMTPS id 717A8B07F1
	for <lists+blinux-list@lfdr.de>; Thu, 29 Jan 2026 14:42:33 +0100 (CET)
Received: by mail-qt1-x848.google.com with SMTP id d75a77b69052e-50341fddb89sf26628461cf.3
        for <lists+blinux-list@lfdr.de>; Thu, 29 Jan 2026 05:42:33 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1769694152; cv=pass;
        d=google.com; s=arc-20240605;
        b=IkWu906255RXLy6T+4ZwzZA0FnnIjxw+vaas72A8M85kRhGy3AKcgqeuwYXCPZhOMA
         oLBmnkcL9ApRLn4+dhjspTZiBbOOcIWlPVlPYGL0uLpjfuE+8XWbMo2t68VR3DPAgOa9
         l8kLC+qe/9gIEO4sxh6FGmU4xzSxRishCjgeNb68YS119mvw8DBvWwo6EHiwOQaiRJC3
         /QcWtq6oXlqEc4GPg65Xe81jEmu4/Z0vAqzP3YAMRRa9tVHObs8h8DvFwPse0aQ6tk2K
         VU3iCLPQFLJsoSvWrcDlmwQW6Z9VnbRDYa7yoefpdoVFrTuuJZuEmFf3DUhJGun8kY5U
         Ahpw==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-language:ui-outboundreport
         :in-reply-to:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to:dkim-signature;
        bh=2uf/q1AQzRbMicmNXkZA2jnDGAaL9vP/lrUrG29bAT4=;
        fh=io6XCKOVTvESsK1XGZIADVK/+jnHHQ1xWlHe0u8NFxs=;
        b=ZQiGWZnbUhphIupu/d5CevbFwreynzAHgMzLjfcWvBe32VbNZ+6khBxdmEQGUnZ9FH
         nUjibfmJpWdFdOtcWDU3m+Ct8KFFioDnCItb1p6yoTqgvDzKy4/4NgRDd/kq0HpAKncf
         nwy6buyKsVpl4lXcuQzUqh8CbF9yanrPwQiYmbX6VwiQe/hjVT0M/jX6AI6S+CJTSIHT
         XgMpiRSKtP3Jfnj/Zd4LwrGWIe9bmFYO2OJRCSW91Jyv/WK9qI9A09FcyGD2zTlHraf5
         b0OpcSf8LtL1aIvbs386V1G658yZ8dL1brTLDlDtWrxCR6vPDUPrNF2JPN3cgOJ93p/I
         JdLA==;
        darn=lfdr.de
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=neutral (body hash did not verify) header.i=@gmx.net header.s=s31663417 header.b=jU39+362;
       arc=pass (i=1 spf=pass spfdomain=gmx.net dkim=pass dkdomain=gmx.net dmarc=pass fromdomain=gmx.net);
       spf=pass (google.com: domain of guenterk@gmx.net designates 212.227.15.18 as permitted sender) smtp.mailfrom=guenterk@gmx.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=redhat.com; s=google; t=1769694152; x=1770298952; darn=lfdr.de;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:x-original-authentication-results
         :x-original-sender:content-language:ui-outboundreport:in-reply-to
         :from:references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to:from:to:cc:subject:date:message-id:reply-to;
        bh=2uf/q1AQzRbMicmNXkZA2jnDGAaL9vP/lrUrG29bAT4=;
        b=sLIkjpz6/qrCh7tsZcDJtk1cHcHgsY55QSx0kyTZ7noY/JME5JB8TyQFtwEkdNV8NA
         Eo0g8urapcVMyyJVv9irKz/S0yjL5pOKXVU8tZRDOmzoOEIl/dsT4ZvuFVwsW+4Mk45l
         rs0RyV4F06RG/enHvAOEB6sMnzoHDATvcwuKJ2xbaotD4zHwqOV08gr5jMWeDmv04DkY
         b2HDvBVP6OxKbVyWSvFRjn/DoaPiLr2dRpKJiqJK2abbjtmCIgkqxteLUbdTHb6IdioL
         p28NctBid/QjBwl41aWOPU7EByLzFvNbl/miLHGqdw84ysF0BEDOESvxiIu03U6QnYwi
         0yRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769694152; x=1770298952;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-language:ui-outboundreport:in-reply-to:from:references:to
         :subject:user-agent:mime-version:date:message-id:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2uf/q1AQzRbMicmNXkZA2jnDGAaL9vP/lrUrG29bAT4=;
        b=GuRbIl3eUsUDO3T+764JuqG76RsoYmNrIyipAwutchPdAQHz62JM43DQeaXaTVJEZQ
         TbaQuCuH0FcICc/FWHpIcQ+Cw78c3gT1qFrEPhKdSb98j0H70ck4DYiEw32w01UV01xn
         Y5ZpYFrus7BIWEU8ENm4Sp/CEnkI60X5J4H8kz3mUNX2vtWa1essduY9NFTzokJ0CL9l
         eWFn5I7+yPJl5I9As7+I0dFKdQ4Zsx57GJSZmG+uo3yEcyDCtsWTMKFH3npts5kzmosV
         cqvi6/2mZ7ceoSZwRvKzYEvwkZyGflNXjGnGxfwIf+s6yIXWQ4V9yQ9Uiht3cokwncvo
         qmgw==
X-Forwarded-Encrypted: i=3; AJvYcCUQVrDVBxG/HHXHVquXwnIOIvHMOZyGlKA8tMepIM4YNenVfmyVLqXcs43Fvl/KqG/70Iy7Gg==@lfdr.de
X-Gm-Message-State: AOJu0Yxs9yRMqT/WY4KI7vSglxBgwJ+rpWLZa5tRiMhDG/N8mryqv6Qd
	bNxwNGaXcRf4gK0xWSHmtcbtTa27qzEel4DSQPu7qgikZK0/FkIDkT45VeJpdV4dP2A=
X-Received: by 2002:ac8:5a82:0:b0:501:5024:23f4 with SMTP id d75a77b69052e-5032f8dd90amr120811951cf.53.1769694151518;
        Thu, 29 Jan 2026 05:42:31 -0800 (PST)
X-BeenThere: blinux-list@redhat.com; h="AV1CL+GL4YiUAuoNFbZQIt15Vbf7ne2avUhD4cfS0bnrxgLrfA=="
Received: by 2002:ac8:7dc6:0:b0:501:4ea7:28e2 with SMTP id d75a77b69052e-503d3fda2efls10470211cf.0.-pod-prod-01-us;
 Thu, 29 Jan 2026 05:42:30 -0800 (PST)
X-Forwarded-Encrypted: i=3; AJvYcCWN57H2tqI1QJOe+xC5fHn4UOHFg4o5AxY8HAG0BT5Dvmm+qYJBNse8JYPHcLhYp3B/NfCSY2VBnxxVEQ==@gapps.redhat.com
X-Received: by 2002:ac8:5a82:0:b0:501:5024:23f4 with SMTP id d75a77b69052e-5032f8dd90amr120811181cf.53.1769694150192;
        Thu, 29 Jan 2026 05:42:30 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1769694150; cv=pass;
        d=google.com; s=arc-20240605;
        b=CWGn+uAqbqbXR4i6rTmJURYoCAnm2Twd/06rdhv0pIxtHhOhIQtg1QPXvasDVinI4u
         sJ5i8Mh1I42pTzPN3NI1VUFlgRX18AttJSGkcEpLWj3LMkh/PspaZXmLE6tnsdTzt8fo
         FUjxMLz2YHs/XV3dG2NgEbiHRzZIbTKzdsP3cpmWO158vxZ+wET95u2RPgVn/IkypSqb
         I5HEz+16OUCn3qk+2sNhiV63UYyRhkK04dFl8vSt7ihUUGJRtDoqlxPNikn1L6/UvkPw
         fJV0U0j8FeslyWEItkzQqwFaTc/kS+wgJOmPEECuHCIqU86M3AwpbZHvePh+uYvtDmXH
         p2Ug==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:content-language:ui-outboundreport
         :in-reply-to:from:references:to:subject:user-agent:mime-version:date
         :message-id:dkim-signature:delivered-to;
        bh=AwmvM8BpnZ1kEZFQSF9D3BF5dqQKUEfR/50mLOILwEU=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=juzykjBGK/2FZSpl52I/vHznDeP2A4o+FYVPbaD5eubXytItv8thXrY6W+laI8suhS
         uNcumhqy3yQ9PK1QVdN++FvXOchrTcCqt4l0uDhmYQlXFVlpTGBpgDcvbMQ8P7I9VLrB
         44rYkmrxXSridaG3EX4Fm5FpXNnM3y3oNYjUufDdkaUXnAQPDOmkHOpXte+ug8Kp3yye
         7U9Z/XI4AkIms6Zp/5QmuNKIH4O1sQolJ8iwAIB3EjTZdK4RoPI3/ZbRNqIqt6Y2EH4/
         G4b3Wj7F36TovJpzKHqbQf5VFYiqDEEwpwuwZntfySnmWh/n3ysb73bQoToyr+yf/uVC
         gt5g==;
        dara=google.com
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=neutral (body hash did not verify) header.i=@gmx.net header.s=s31663417 header.b=jU39+362;
       arc=pass (i=1 spf=pass spfdomain=gmx.net dkim=pass dkdomain=gmx.net dmarc=pass fromdomain=gmx.net);
       spf=pass (google.com: domain of guenterk@gmx.net designates 212.227.15.18 as permitted sender) smtp.mailfrom=guenterk@gmx.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.132.61])
        by mx.google.com with ESMTPS id 6a1803df08f44-894d38368dbsi57187816d6.563.2026.01.29.05.42.30
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Jan 2026 05:42:30 -0800 (PST)
Received-SPF: pass (google.com: domain of guenterk@gmx.net designates 212.227.15.18 as permitted sender) client-ip=212.227.15.18;
Received: from mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-35-165-154-97.us-west-2.compute.amazonaws.com [35.165.154.97]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-80-Xyy1q9x0Pg2lrVBn2FWwKQ-1; Thu,
 29 Jan 2026 08:42:28 -0500
X-MC-Unique: Xyy1q9x0Pg2lrVBn2FWwKQ-1
X-Mimecast-MFC-AGG-ID: Xyy1q9x0Pg2lrVBn2FWwKQ_1769694148
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.12])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id E08B2180044D
	for <blinux-list@gapps.redhat.com>; Thu, 29 Jan 2026 13:42:27 +0000 (UTC)
Received: by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id DBD7E19560A7; Thu, 29 Jan 2026 13:42:27 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.90])
	by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id D8ACF19560A2
	for <blinux-list@redhat.com>; Thu, 29 Jan 2026 13:42:27 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [170.10.132.61])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 77D4C180034D
	for <blinux-list@redhat.com>; Thu, 29 Jan 2026 13:42:27 +0000 (UTC)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
	d=dkim.mimecast.com; s=201903; t=1769694146;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=AwmvM8BpnZ1kEZFQSF9D3BF5dqQKUEfR/50mLOILwEU=;
	b=h97dDeAmjS5h+Isag4vDb3aZ33RRgPwOahEt6+8eOZ2v8Eq3V3vZcWLLa9+18JgEBGTS8x
	bd3Y3YSRBr3liNrC8u6gsBuCr4Gh8wS3FmVEwTxyIXlV2iv4hZHOueB9T5YhqDcwQjEs5M
	MxB4usfvpRZ/v4oT6scig6wHtR+Iga6vz1Z0qEK/mssiQt2tSAXhKaG6n5qsfPCsSN33iM
	baDPNdZQ1a8TvmDFc2Xas9l8rYvAcyCbwtARTCGT766w9//oFvPf4WktOEpCF0joLPkrLi
	efoi1G69rZIQ57OhfaXBWssFZo1bfkTZuczQl7V3OQvtOgWCvbREkHSr7yzSwQ==
ARC-Seal: i=1; s=201903; d=dkim.mimecast.com; t=1769694146; a=rsa-sha256;
	cv=none;
	b=a2UpXNKhKTAeQg18HuhJ8No0iA+0aiNAOYf85yqh4/aUa9r+1N/UMXuzzR6v2nC4p+U1WZ
	tTEqQvhU3H8BUEXlDGWRiCRwL9Xzo//k8uxQXuYHSG7Oip9ciJLswGagmtTNq5fPrfTVTG
	y3FF3OLgXet202z+oNZKkErtm8gYcPqeWyNeyLo4GehicqgUt7ttKQA7ZrrhmnL4pI+EV7
	De66jn7VvrodGNJHE2nWtvxgkgiufXMJAzVIyCJKOb8r0Tdza5hLWIUDnI/AHjkUIjOxPM
	fdLXYpM/2khhW62PRlZOzlqTtEqIq9l0dlKRNBknDq7r43MiU/tgvYDBAHpx3w==
ARC-Authentication-Results: i=1;
	relay.mimecast.com;
	dkim=pass header.d=gmx.net header.s=s31663417 header.b=jU39+362;
	dmarc=pass (policy=quarantine) header.from=gmx.net;
	spf=pass (relay.mimecast.com: domain of guenterk@gmx.net designates 212.227.15.18 as permitted sender) smtp.mailfrom=guenterk@gmx.net
Received: from mout.gmx.net (mout.gmx.net [212.227.15.18]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-376-q6cMOVHiNGSfIcCvQoTwUQ-1; Thu,
 29 Jan 2026 08:42:24 -0500
X-MC-Unique: q6cMOVHiNGSfIcCvQoTwUQ-1
X-Mimecast-MFC-AGG-ID: q6cMOVHiNGSfIcCvQoTwUQ_1769694144
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from [192.168.1.109] ([79.231.11.8]) by mail.gmx.net (mrgmx005
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1N2mFi-1vtCVJ1GJQ-011cTV for
 <blinux-list@redhat.com>; Thu, 29 Jan 2026 14:37:21 +0100
Message-ID: <6609f378-fa78-41e6-8833-59e89bfd58fc@gmx.net>
Date: Thu, 29 Jan 2026 14:37:20 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Sad
To: blinux-list@redhat.com
References: <CAM+Q2c7c+M3ho66a5Kq8R_DERW_G6WPsUvrTkNovhEKWqTbBBA@mail.gmail.com>
From: "'guenter' via blinux-list@redhat.com" <blinux-list@redhat.com>
In-Reply-To: <CAM+Q2c7c+M3ho66a5Kq8R_DERW_G6WPsUvrTkNovhEKWqTbBBA@mail.gmail.com>
X-Provags-ID: V03:K1:H0DKAB5W4J8ZyF2alfIe5DzIt5t27BDFaqn59V2NodZ37697XcH
 th0dtcAzst2iB+lU4KC3v/lUaIvA03UsyMqZlNswpqN64ScP0f2ZwYtncOj4AMBCwX9WFwD
 NJAGM9N4ZbLZv4uvNb/rwPx/+rIO9n0N4YKwCsgOeR7YwPfVsfSxyA/WPjWA9UuvreyVrFy
 v/iFzx6zK3B1NuoIoJ3jw==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:Qo//Na1hhRg=;UZPJsZDaxQhrtyjlmuuXpuaFdOK
 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
 Mw49j9igA75FEHnSCsaDN2EOHfgiIPX79i8=
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: 95h3cFz7qKlveE1Grs8jhq0cPTckPWGhsFUFF6kovwA_1769694144
X-Mimecast-Impersonation-Protect: Policy=DMARC Check - CHG0118091;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12
X-Original-Sender: guenterk@gmx.net
X-Original-Authentication-Results: mx.google.com;       dkim=neutral (body
 hash did not verify) header.i=@gmx.net header.s=s31663417 header.b=jU39+362;
       arc=pass (i=1 spf=pass spfdomain=gmx.net dkim=pass dkdomain=gmx.net
 dmarc=pass fromdomain=gmx.net);       spf=pass (google.com: domain of
 guenterk@gmx.net designates 212.227.15.18 as permitted sender) smtp.mailfrom=guenterk@gmx.net
X-Original-From: guenter <GuenterK@gmx.net>
Reply-To: guenter <GuenterK@gmx.net>
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.21 / 15.00];
	FREEMAIL_REPLYTO_NEQ_FROM(2.00)[];
	ARC_ALLOW(-1.00)[google.com:s=arc-20240605:i=3];
	DMARC_POLICY_ALLOW(-0.50)[redhat.com,quarantine];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=google];
	MAILLIST(-0.20)[googlegroups];
	R_SPF_ALLOW(-0.20)[+ip6:2607:f8b0:4000::/36];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bncBCS6LGFW6MFRBRWH5XFQMGQEDRHRRZY];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail-qt1-x848.google.com:helo,mail-qt1-x848.google.com:rdns];
	RCPT_COUNT_ONE(0.00)[1];
	FREEMAIL_REPLYTO(0.00)[gmx.net];
	MIME_TRACE(0.00)[0:+];
	TO_EQ_FROM(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[redhat.com:+];
	HAS_REPLYTO(0.00)[GuenterK@gmx.net];
	TO_DN_NONE(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[blinux-list];
	ASN(0.00)[asn:15169, ipnet:2607:f8b0::/32, country:US];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: 717A8B07F1
X-Rspamd-Action: no action

Really sad to hear this!
-- 
.

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

