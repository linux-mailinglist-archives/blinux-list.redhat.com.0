Return-Path: <blinux-list+bncBCNJV2PYXEDRBVOB2OYQMGQEOFADBPY@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mail.lfdr.de (Postfix) with ESMTPS id 71B1B8BAD12
	for <lists+blinux-list@lfdr.de>; Fri,  3 May 2024 15:04:23 +0200 (CEST)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-43b08a9d373sf57295121cf.3
        for <lists+blinux-list@lfdr.de>; Fri, 03 May 2024 06:04:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1714741462; cv=pass;
        d=google.com; s=arc-20160816;
        b=DDPMRnQZgVXHKtFC/Zb7ZDsn7uQAMqH+zczj9toIm0wTkOhE2U57HEYPX3vYuuvGzn
         eCCeSNlqNTtWKj6IRslFrfcLRZZwd0OfnAg5WkeFSe0B8Ez9VeFwHjDWkOk6ExKIkew6
         iDtoEP0EqEoS4tbLzjPaqbJ5MZMLryFcu3rXYs5AmZ+nQPjPfDzCGLzmvSL9rbWSyUCS
         LWZR1y4TXH1rq8hXU+azik8sFUu34YEXCmByiPCU3r3DkDDgE8aYt4s6i0rYtka4Id2p
         hRXs8ccVIxOAyLqK43SpMdwN/u5Y5/mTGF+ra39+NHH2gnHc8wuomgaiDrMC00b9r2LZ
         h/5w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-transfer-encoding
         :content-disposition:user-agent:organization:in-reply-to
         :mime-version:references:mail-followup-to:message-id:subject:cc:to
         :from:date:delivered-to;
        bh=GOMbXxBHIALg03pnd9TxkaRseijWqUzRM44qaJDr+Zw=;
        fh=oLC4VGXMJjRmiBeRZzTwegdS6/bXgUUyADJVjX1haXU=;
        b=A1LoeuwXkHp8J00TVazk5LfMEAbRIiwMQV1oSY+hDP9WXswp5CeaCBIjKswvlN56lZ
         fCHFlk/JIlSTVKOMbu1gT1OVzCGTaIrUmu+tORqUQLp2okxhxzgXfAm4fTHEisWtIwe6
         k+8yM009hwbZndAb53cqhKUEIGS5iVzAmjFYHKN4rqSf5h2JWM5QnAEX5EfRLNXT+WJs
         zgJC/qEoJwzCRmnWoRW76xYxMbd76WWyELGySvCDgMeXI2aiFREtwHQs1ECAKBcvmEhV
         h7WfTquhUs91InGTFmEPtagJ2T0dJYZP7WRZJK8xNkEXOFNCYlALHu5SX9rDPAAfPyaS
         cx7Q==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of srs0=ykl5=mg=ens-lyon.org=samuel.thibault@bounce.ens-lyon.org designates 140.77.166.138 as permitted sender) smtp.mailfrom="srs0=ykl5=mg=ens-lyon.org=samuel.thibault@bounce.ens-lyon.org"
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714741462; x=1715346262;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:content-disposition:user-agent
         :organization:in-reply-to:mime-version:references:mail-followup-to
         :message-id:subject:cc:to:from:date:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=GOMbXxBHIALg03pnd9TxkaRseijWqUzRM44qaJDr+Zw=;
        b=nJFGUG5XZyc6NZpfc24lM9aZ7hzZKveP73K51kLuBQI7hkAWrNuXExs+LBDbM3q0Hf
         9agxo6yD2nkZhBGP2qf9zgf3IY93A4BeZGy224VbALbrV5prmJkDK6vCOkyfAVssScgA
         ZPM3zTRNFPbPXnD5YVGj7P+s8T9PjTqpKxt4O7h+ZOLJSYj32hqjvLUt9zXHKnrPrz6a
         a+kyENwkFYXQbfBaIwKR6RDGt+8U/4iGXxCJqfeQ22yRsedSckloI6Nf8kU1RcvHSMg9
         884DKijnHxv6sPt4h0QU6Dk5qCy5PekufjHw0uqGv1hzNHjUMdf4AlKajylqvzhlBMfS
         1LRQ==
X-Forwarded-Encrypted: i=2; AJvYcCVESA4RG0oiVyszk7ytOGRX7vT5WKYESH9PEpoULHTAF/Sp9D7VRbBTxXGyN7VVapGtJEiH48ipWM5wLt46ZVA1/zYHiZEQbtPS
X-Gm-Message-State: AOJu0Yy9OLVAsit5snHNh1ll02nE72W1+/5z+BD2K5IuiwgNdah367Ns
	KnvILUGfN9YjrP+SLu2suEm76jAigr3OsLV0+QxqJszChuBY09h1pNYeqPCqnac=
X-Google-Smtp-Source: AGHT+IHyjJk3z6SOde9468HOA/6YsUQY8xm/SThrPccBFkcc4J1IfvQ0mzPNWrSYadDOOXLXtL1y7Q==
X-Received: by 2002:a05:622a:1388:b0:43a:b8f4:6600 with SMTP id o8-20020a05622a138800b0043ab8f46600mr2551799qtk.1.1714741461981;
        Fri, 03 May 2024 06:04:21 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:5acc:0:b0:43a:d446:cd27 with SMTP id d75a77b69052e-43ca82aeb0als22585331cf.2.-pod-prod-04-us;
 Fri, 03 May 2024 06:04:21 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVrzlDvDVqJOEyus+x1hpEJwXj33++OOoKskNrNlQ9HWIKSIP3H2kNy3UdvXGui8YqfdXo7tng/ISvcnktbJg833JRsQJm4ThiOWm8g
X-Received: by 2002:a05:6122:16a3:b0:4d4:e92:1a71 with SMTP id 35-20020a05612216a300b004d40e921a71mr2642745vkl.11.1714741460891;
        Fri, 03 May 2024 06:04:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1714741460; cv=none;
        d=google.com; s=arc-20160816;
        b=dsA9JfCXnS6w0ytZmR8BbQU/5XbLgX5SUKSgiIAzrRqCQlEATEdbbkGBB4BISwWRLN
         eS6w6gi8SxJuDd/+P/wF9rpyv8YfaJua2zJ/zEKbAh6k6AY8j4idaRzdQmhTj9NdfdOT
         Z912jobADC+AOUDjID8gc+3GcE1tuYdUec54HUV2d1Dr0IDzZ2wKki+5u+/G+CgmiX8L
         2KW6GnZEXzAXgQyWhNMd2Mfvo+QpZiCctDuSd2ujgeuyqkeQURvOYl54nKgocsKGzjCb
         DcZMClgjeY4XtzN6QN1BkcCzmCCvl4Ajts3P3fH59WgBqyFCD7I9UIJgNOWgpo1N2dWo
         kIPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-disposition:user-agent
         :organization:in-reply-to:mime-version:references:mail-followup-to
         :message-id:subject:cc:to:from:date:delivered-to;
        bh=ltembu8ubKLmpQhinpdj4BnaOxb6kZaLxOqi9WgwGWc=;
        fh=x0HVBJP64k4SriRDpNTQg5OkPvzs01G+nFJibb/BCzg=;
        b=EDLbKdz83A49k+U7ptM3WuHtuF0heo1sihO6PjLmkUr8zATIKfCYTbuu1zRL4KLeE6
         V07dFF5jsLhTS+qBXYeZ+u/kELeP7VNll6skYDusNZTg61hmkdJZxRgcY2ghua1t3F1n
         fSRFAfsqueTwQ2m+sCRBWmUTtEukQf16o1esCIRW25vyhdxEP04UsISj3Wfu+oh+fruu
         lSYsTccK1YgfttDI/ayTfy1c6WfsOl9cGIXIc0Dhr705KMFLdjhqh4+jrHjHOrB1Qqn2
         qtzmTi7J5sc+3D9+0agObRlZ6SFsTtgLxoqf1gKkzrcgKfDpGAu3Itd4ylu1M/yM6c89
         Hwsw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of srs0=ykl5=mg=ens-lyon.org=samuel.thibault@bounce.ens-lyon.org designates 140.77.166.138 as permitted sender) smtp.mailfrom="srs0=ykl5=mg=ens-lyon.org=samuel.thibault@bounce.ens-lyon.org"
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id p14-20020a67fc4e000000b0047ecdd11732si576192vsq.346.2024.05.03.06.04.20
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 May 2024 06:04:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of srs0=ykl5=mg=ens-lyon.org=samuel.thibault@bounce.ens-lyon.org designates 140.77.166.138 as permitted sender) client-ip=140.77.166.138;
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-245-QokQEe-MNhy1i3tEpi0jow-1; Fri,
 03 May 2024 09:04:19 -0400
X-MC-Unique: QokQEe-MNhy1i3tEpi0jow-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com [10.11.54.7])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id EDE092823F6E
	for <blinux-list@gapps.redhat.com>; Fri,  3 May 2024 13:04:17 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id E70F91C0F13A; Fri,  3 May 2024 13:04:17 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast10.extmail.prod.ext.rdu2.redhat.com [10.11.55.26])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A87AE1C0F13C
	for <blinux-list@redhat.com>; Fri,  3 May 2024 13:04:17 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id EA4851C4C38F
	for <blinux-list@redhat.com>; Fri,  3 May 2024 13:04:16 +0000 (UTC)
Received: from sonata.ens-lyon.org (domu-toccata.ens-lyon.fr
 [140.77.166.138]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-642-hohp7G-0PF-6sgeP1Q6tAg-1; Fri, 03 May 2024 09:04:15 -0400
X-MC-Unique: hohp7G-0PF-6sgeP1Q6tAg-1
Received: from localhost (localhost [127.0.0.1])
	by sonata.ens-lyon.org (Postfix) with ESMTP id ADBA7A0349;
	Fri,  3 May 2024 15:04:13 +0200 (CEST)
Received: from sonata.ens-lyon.org ([127.0.0.1])
	by localhost (sonata.ens-lyon.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 23pZp8DqdZ8Q; Fri,  3 May 2024 15:04:13 +0200 (CEST)
Received: from begin (nat-inria-interne-52-gw-01-bso.bordeaux.inria.fr [194.199.1.52])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by sonata.ens-lyon.org (Postfix) with ESMTPSA id 93BC3A0340;
	Fri,  3 May 2024 15:04:13 +0200 (CEST)
Received: from samy by begin with local (Exim 4.97)
	(envelope-from <samuel.thibault@ens-lyon.org>)
	id 1s2saD-00000001RQa-1LHH;
	Fri, 03 May 2024 15:04:13 +0200
Date: Fri, 3 May 2024 15:04:13 +0200
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: Elias =?utf-8?Q?St=C3=A5hlberg?= <elias.stahlberg@harrastenurkka.fi>
Cc: blinux-list@redhat.com
Subject: Re: nvda2 speech and debian install error
Message-ID: <20240503130413.rxcx55qhjx64utco@begin>
Mail-Followup-To: Elias =?utf-8?Q?St=C3=A5hlberg?= <elias.stahlberg@harrastenurkka.fi>,
	blinux-list@redhat.com
References: <2aafa8d0-f421-42da-9178-fcfbbf5a5a1a@harrastenurkka.fi>
 <20240503123117.6vhsfjpfuhjgwxno@begin>
 <126a3a3c-2f91-411b-b72f-74cd586cf7bf@harrastenurkka.fi>
 <20240503125138.ccmtstpyuyyyyf3e@begin>
 <4703c033-5eee-4d95-b6c2-c1e9a9ddf089@harrastenurkka.fi>
MIME-Version: 1.0
In-Reply-To: <4703c033-5eee-4d95-b6c2-c1e9a9ddf089@harrastenurkka.fi>
Organization: I am not organized
User-Agent: NeoMutt/20170609 (1.8.3)
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.7
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

'Elias St=C3=A5hlberg' via blinux-list@redhat.com, le ven. 03 mai 2024 15:5=
7:53 +0300, a ecrit:
> I have now installed the required packages, but where do I set the port a=
nd
> address of the server, how can I start the server, the command nvda2speec=
hd
> does nothing, command not found

I can only point at the readme file.

Samuel

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

