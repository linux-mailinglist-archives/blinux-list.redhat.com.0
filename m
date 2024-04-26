Return-Path: <blinux-list+bncBCFJ3VNT5EIBBPNTWCYQMGQEBHYVH5Y@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mail.lfdr.de (Postfix) with ESMTPS id ED15B8B4106
	for <lists+blinux-list@lfdr.de>; Fri, 26 Apr 2024 23:16:46 +0200 (CEST)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-43478c4884bsf34730811cf.0
        for <lists+blinux-list@lfdr.de>; Fri, 26 Apr 2024 14:16:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1714166206; cv=pass;
        d=google.com; s=arc-20160816;
        b=edS9XM0y0EBASo4kS45htrUconnUaYTBSk/ILig+GgA72NbIDLpPVfUERLCs2d4Unh
         TlvX7Hn//wIoHT4eswBKIsDMc6vtgJGP5LFMkpAmPcIsWFlGdtcm8gd/1mHrXvuKM6v9
         8MI5KE1MGrXY0m3v8EIpb2q5FQdS4rx9eeCI0Wgmkvd3ew5bg3OWZlemqMfrKM4a2P6I
         mXfn4sZbnZc/2alZGN7jsOWS8ztclW+6Ni0rjEfBrHjPbSNlXIX9qpXwOvVshAdoWH/m
         ytbHYIWoF4Dyks0ZKLZu66ypnyZJGN7Am/tesx5jKAbrhUkUOxmYj9lbRsickaZtWdZq
         M+Kg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:to:date:message-id:subject:mime-version
         :from:delivered-to;
        bh=57Xjftkkp5jp5DErqgSWVb4KSty8sDRjLQ8SQqKxaFM=;
        fh=3RSvu233nIL64PALCJ95IOcJQk/h/aElnSyjoQU8aQY=;
        b=dJfliWGlEcHSWyOVibWPk4W6aeG+v4ktdxvAbwMvMN2CISxkzg6eX0at3j5N43vY8G
         1a+eIFA8nP0VxrN27mbRZaEuSRCu1xc5hmMq8o3CrGY23VWP0NnjTY5wcUSJgt4nIiU/
         Q95wVV/lOeTIAkk6p2migZSW13NM3P2nyvVEzgT+bv32MeWhrqtvziH0Pm8dmNi/7v+5
         78iRDTaPKksO50yNvsa4JB7WhCZ842RU4ev/RLF4F25aBJqFfVZjUrKP+SHyQpEDfSv8
         A0LbN4ejFxY9RNXzqzhrS0Bst9IPPbyLve6LCHkmGP7IOyMqZUioc4yGiqnfxh6TQVnB
         Fyeg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of dcrone215@gmail.com designates 209.85.210.47 as permitted sender) smtp.mailfrom=dcrone215@gmail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714166206; x=1714771006;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:to:date
         :message-id:subject:mime-version:from:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=57Xjftkkp5jp5DErqgSWVb4KSty8sDRjLQ8SQqKxaFM=;
        b=mCNhdfOwAhV/ug2TLLP0tzffiV8kdy94hSd1aksJFTjAy/6hzsPnXn8RaFklbnFBkm
         pJZbTiETZwXdEz/jhtyJbVMzQKIK/RdfxkX/OxKRw4pUkmNG9n2pjZmEygKkNGwwEVwU
         6gU0hqeaZoTn4SWZwdqwkbyFIC6KO9YqE1NwRHHCDUFe+T8Y9+WyST5TYJHf7S+y0nHp
         3Ud5EyTaN1+8IbcadqHdkOZyeIpDT+vxqmHQH14hTD9fHge6Tyoz/wpU9emgYRRiujTE
         ObXBLGDikn9vXnO+gutAusm5QT2jH5qfK3/Gc2irS0yvbbz6Dw5AC9eR+YvXfK1fjlmW
         5S5Q==
X-Forwarded-Encrypted: i=2; AJvYcCULG/7lmtsMWTiNuMIvH/XSXlN42R+DhfOghVRhH9CweacnS04YHOolrMcu1+HQoN/u+g8QqALWepYwyDsKfIe9j14bx3cE/pv4
X-Gm-Message-State: AOJu0Yz7xTsinPDxrWnpxHXmXhxf4qeATnuUy7RuXet9J1AKUp7ceptI
	CNu8ntoIJYJux8XYtT/1OE8JcLh0/4EuXkUAd9eZJ8ngEeEeQ9W3vNs8dRoVKsQ=
X-Google-Smtp-Source: AGHT+IEc6iSNnshJqdyQIfWhb/zSh7/dN+Q3FJkNdKYrQoFxXrTAjSAaQSvfGABZdAXUlcDuboeVjg==
X-Received: by 2002:a05:622a:589:b0:439:dee8:be6f with SMTP id c9-20020a05622a058900b00439dee8be6fmr4280019qtb.48.1714166205592;
        Fri, 26 Apr 2024 14:16:45 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:48:b0:43a:9715:9e11 with SMTP id
 d75a77b69052e-43a9715a028ls3127031cf.2.-pod-prod-08-us; Fri, 26 Apr 2024
 14:16:45 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVQe7N7ln7TkeAnzCW9trjKCL+NAP48xEPCcZUlVnn87T7axiX8mTuUO0sVg6G4dNUVJoJwur+rZ4Zfhpc57d7aAkLWvwkoo+SdZNPb
X-Received: by 2002:a05:622a:47cc:b0:439:908b:a3a8 with SMTP id dp12-20020a05622a47cc00b00439908ba3a8mr4472987qtb.14.1714166204851;
        Fri, 26 Apr 2024 14:16:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1714166204; cv=none;
        d=google.com; s=arc-20160816;
        b=TmDOAvb2hgzgokkWl1ZxvrNlNXybhY0GSNCt3H5eqeUn6fZXR092rCM5DMH+co6ff2
         eI+abtMfqcaFkG+B2L+u0H7nwtoBSmA3ZsAgioR3aAdfJ5QrvFcK8P4Z1FBhm9WXY6zM
         FF3HCdK9GSWaqkKz+Us2hzwULtzdj00FJicf187jNz1qt2vrfatR/02ELhhfd96mCwZN
         RtmVdtlwipdoKe8IL8bK4ju+saVt5Ap2Vmlj5x8LuxxQBdSWd0rvgKdGXUtcmowYX43J
         3yTM0gdTyYRDARD4uzeaVToXkT0r2FpDhVPClDYi5pP23p0YGckqcrpV7y+ekd3A7XII
         hmGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:to:date:message-id:subject:mime-version
         :from:delivered-to;
        bh=N9UQ4gmD39mxFBr88P/TmuxcNT7GmPx53y3zL7PmqxM=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=so9WhxQtOxE/lf+UCUlm2wIKFhtoynI4YytSVa3OuKKBLIXmeXnFJZn0WOzwkbzQJw
         SwO7KDeKIcsI9ofKr9G5HKC8ja+ikQBqSEzkxUjU7QrZKCRsgaDT6MP1FFbWCAGnAfDd
         uBme3UsRefYDseCX2SEr4WEqjI2syOeqh2BhmqaKzB3tfmxH1RGk0DnaiIQe3fQ/RVbH
         +55Cs3KgI3wAgpooU1N4I5B+te7fCpRex7dCna3tItZrgo3PeDtA9LCGWQWD+Wi9MCRC
         HB6t2fzAHwh+46yVVPUgjnWqd922iMkpKio0bJ5ThxQNbwON8ru1T19VoT+M1PjG4eH2
         J8Yw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of dcrone215@gmail.com designates 209.85.210.47 as permitted sender) smtp.mailfrom=dcrone215@gmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [207.211.31.120])
        by mx.google.com with ESMTPS id bs9-20020ac86f09000000b00439a65ee9aasi15148089qtb.250.2024.04.26.14.16.44
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Apr 2024 14:16:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of dcrone215@gmail.com designates 209.85.210.47 as permitted sender) client-ip=209.85.210.47;
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-611-8G_U8SZFPu29Fkh3gaq5Bg-1; Fri,
 26 Apr 2024 17:16:43 -0400
X-MC-Unique: 8G_U8SZFPu29Fkh3gaq5Bg-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com [10.11.54.8])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id F340B38035A3
	for <blinux-list@gapps.redhat.com>; Fri, 26 Apr 2024 21:16:42 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id F0892C13FA3; Fri, 26 Apr 2024 21:16:42 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast09.extmail.prod.ext.rdu2.redhat.com [10.11.55.25])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B86CFC01595
	for <blinux-list@redhat.com>; Fri, 26 Apr 2024 21:16:41 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C4BBA29AA3B7
	for <blinux-list@redhat.com>; Fri, 26 Apr 2024 21:16:41 +0000 (UTC)
Received: from mail-ot1-f47.google.com (mail-ot1-f47.google.com
 [209.85.210.47]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-682-x0_RW5WDP6C9VDORjzHa7A-1; Fri, 26 Apr 2024 17:16:39 -0400
X-MC-Unique: x0_RW5WDP6C9VDORjzHa7A-1
Received: by mail-ot1-f47.google.com with SMTP id 46e09a7af769-6ea2f95ec67so1296451a34.2
        for <blinux-list@redhat.com>; Fri, 26 Apr 2024 14:16:39 -0700 (PDT)
X-Received: by 2002:a05:6870:f6a5:b0:21f:1705:d5b0 with SMTP id el37-20020a056870f6a500b0021f1705d5b0mr4712881oab.52.1714166198573;
        Fri, 26 Apr 2024 14:16:38 -0700 (PDT)
Received: from smtpclient.apple ([2607:fb90:d112:d1a:716f:3885:efac:2954])
        by smtp.gmail.com with ESMTPSA id xi9-20020a0568704f0900b002392041da7dsm3531809oab.48.2024.04.26.14.16.38
        for <blinux-list@redhat.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 26 Apr 2024 14:16:38 -0700 (PDT)
From: Daniel Crone <dcrone215@gmail.com>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3774.500.171.1.1\))
Subject: Orbit 20 with linux
Message-Id: <B0F6315A-8C7E-4BD0-9B66-06E6DDAC0529@gmail.com>
Date: Fri, 26 Apr 2024 16:16:34 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.8
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmail.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dcrone215@gmail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of dcrone215@gmail.com designates 209.85.210.47 as permitted sender) smtp.mailfrom=dcrone215@gmail.com
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

I have an Orbit 20.
After putting it in to bluetooth mode, with easy pairing, how may i add it to linux?

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

