Return-Path: <blinux-list+bncBCLPHQH4XEIRBTUTXCWAMGQEK46L34Y@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mail.lfdr.de (Postfix) with ESMTPS id 25C9E81FC11
	for <lists+blinux-list@lfdr.de>; Fri, 29 Dec 2023 00:50:40 +0100 (CET)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-427b6c5d8fasf10790281cf.0
        for <lists+blinux-list@lfdr.de>; Thu, 28 Dec 2023 15:50:40 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1703807439; cv=pass;
        d=google.com; s=arc-20160816;
        b=R4LG2Xm69UdmpNlJV41l32duXe0KoeEjVlXHjfZrI/W6ZXO7Ea/OdrB8rJqJxQeZ/2
         gPJ5xaus1ks/E6/9qKCkM5BgPWMObNQHH/w5LLDQJF1abDgCyQ/ccizNqxIVZvIwPVXF
         CBmBffzOIyIRqbEp5nWW3V3LF6995FTFT02nW3XAa9O5imxDBIEX2lObSxWVS1Bxf7sG
         VVMi+BEfQzeAjqq0ylAKfPqKQtzqZ9geFMLyFXz9XD1s3p5qhy11mAiTwWaSdbhNhXVl
         FkXQ4AXG+nOUPS7HROFpfWzR+zHUZeorisn809a4RLUwoKrgaRKpm/7GB+DW7CJRa7GB
         wMFg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-transfer-encoding:content-language
         :in-reply-to:autocrypt:to:reply-to:references:subject:from
         :user-agent:mime-version:date:message-id:delivered-to;
        bh=7G68swUKsqnVOazsaC/tdL4LW8phQDdaqjgSTpd7GY0=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=kEAmvw/BTCI0aIrvs4GtvUlgsmQ3fvotQfkbSOxjsa47mr65ibL9iIQDlNluc/z5jO
         GzabFDhQjWxH1CjoK7qHupGuV5gdEQ7LrIQYd4/an5/9eidx+W4aGJNzYvcHviFAdI26
         pjUdanPOvNI9QXdrC2i/mTAcQ7dVNuN3wxP6Ybcp60OF4JrML8d79gZLYkR0wkzY9V6C
         nV6qRBF/AZAiZuBJKFuqCTqILcrnZ+ien2WS8Hb1TZMbwT/QhLhfUlsj53NdtHmFY9AB
         EqYOLPEz4XYa45EgQkd8OPoYtF3P1f+DoXBJ9SRwROxMNJsEEz246YZ49f1ye2qfxQT6
         tG9w==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) smtp.mailfrom=jason@jasonjgw.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703807439; x=1704412239;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:content-language:in-reply-to:autocrypt:to
         :reply-to:references:subject:from:user-agent:mime-version:date
         :message-id:delivered-to:x-beenthere:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7G68swUKsqnVOazsaC/tdL4LW8phQDdaqjgSTpd7GY0=;
        b=smh8lyAhAK0auF7xdDy2E0B/f+66uFuPpGgLw08T75zc/iKLCZk+MYecLnCo6Xf4zo
         KOkC8RR84WGWxlt7hOykzEMltpERsmL/MMWC4T+tgu48Lflf3WvkqYgMAlcM2C09Yq06
         i5DYp7TaUVVURUUKY2hNDzIuPww5/4aUjOiiXcrcmgbdOYhsoTal0Bu5Jc8XgIz9E1GR
         VYV/un4hp0eXjiVnWpRpaVRZVtM2tYUlIRxZLVzCPpamTYhNIH0/fOifc11Say8hJEBF
         7umbed39mzn487udvlI9Dejv8uTDzuCw6ew322IqJa+vv78ebVSLooIKL0G3r5WejqFp
         mlHA==
X-Gm-Message-State: AOJu0YwPPs5qmVl14mrU8xPIDJD3+1PHWENWnry6ESqVlG8oUwZKHW6f
	ajRhtseCBwIHKP57hPyb4jS/lTmsj3OCqQ==
X-Google-Smtp-Source: AGHT+IEpgtQh2gxAGvnpoD85KqrYSp5nZ+BIh0e/ul6Cj1VqB2xwCbgZB7mULnDBfL+VQG4gkDWfKA==
X-Received: by 2002:a05:622a:1914:b0:427:9751:959d with SMTP id w20-20020a05622a191400b004279751959dmr25511720qtc.1.1703807438840;
        Thu, 28 Dec 2023 15:50:38 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:291:b0:427:fa8c:8396 with SMTP id
 z17-20020a05622a029100b00427fa8c8396ls884683qtw.1.-pod-prod-00-us; Thu, 28
 Dec 2023 15:50:38 -0800 (PST)
X-Received: by 2002:a05:620a:ec3:b0:781:4b7:eeb2 with SMTP id x3-20020a05620a0ec300b0078104b7eeb2mr14619308qkm.56.1703807437941;
        Thu, 28 Dec 2023 15:50:37 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1703807437; cv=none;
        d=google.com; s=arc-20160816;
        b=IQGy3SeWbKCCPNUwH+OmGc0U/Q9bI1V03MaW5mc4aTf50eUrbYTBTQITFRu2yxyhH/
         wekMROL5tj2pmvGNb9tGe9OcxOyN1qvVugT28iONx3U9obwKoNEJnOcfNvymhDh54KnP
         +UzovdEU2vY/W69I3Qmv64zWkDjySxtyP6o2XgM0gq0K+3n8Q/07PxziibjtovZnxHHS
         34zXeGySIt9/cvsywO6geqQayRnYlZAxJE5AOu7bBoUUpvVC6ioTEzOtXB4f3JAP76RY
         xIXSa6rnysql1qoAul3MdeN1f/6TwHgMVeWA88H2LBoPYeNhEUI3scLVAEv2+c9XBGYc
         rQuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:autocrypt:to
         :reply-to:references:subject:from:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=VNId5e8Rc2lGavP7Sl3iiJI0Ke3rEq9H4LTDSw0aUbk=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=ztBrgCxPRjDIzKKo9RDfz/X9D/CpJF501DcdEa+Sn7r3LvlLTAGOKEyON8qUTbPuHt
         EKXa8pikY1pL4uO2QZX/OhN50E/RY6RUaSugt+WfFuWA/ZvTwTHXcUflAdNLECRV4FbA
         yg2IJobj7M8+450pNsMaROlmpTSdT7bEH7HM+hzxsSH4CDycBM4FzCVVJJBGq/nk4jMN
         1p9lm9q/7CYoOq0eB3bOuYvDGh/ed0eUiH5W9CdGWz038CZCN96T1bdTzwSFxbtk6vYA
         GLtgWytrTP40HyIKwQ8UIqX6Cp8FWqonmJ6XKJ4nUvoOti5orXbCmES8zCEw/6iKJwQ7
         x34Q==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) smtp.mailfrom=jason@jasonjgw.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [207.211.31.120])
        by mx.google.com with ESMTPS id k16-20020a05620a415000b0078158dedef2si6497930qko.666.2023.12.28.15.50.37
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Dec 2023 15:50:37 -0800 (PST)
Received-SPF: pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) client-ip=192.155.90.172;
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-479-N8F6qH-gPPa88zdTQZkPng-1; Thu,
 28 Dec 2023 18:50:36 -0500
X-MC-Unique: N8F6qH-gPPa88zdTQZkPng-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com [10.11.54.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2D6843C2AF82
	for <blinux-list@gapps.redhat.com>; Thu, 28 Dec 2023 23:50:36 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 2A0683C27; Thu, 28 Dec 2023 23:50:36 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast09.extmail.prod.ext.rdu2.redhat.com [10.11.55.25])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 228CD3C25
	for <blinux-list@redhat.com>; Thu, 28 Dec 2023 23:50:36 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id EC77329AC035
	for <blinux-list@redhat.com>; Thu, 28 Dec 2023 23:50:35 +0000 (UTC)
Received: from svr.jasonjgw.net (svr.jasonjgw.net [192.155.90.172]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-108-7JiYcMRtN2WVTdS8UoXRMg-1; Thu,
 28 Dec 2023 18:50:33 -0500
X-MC-Unique: 7JiYcMRtN2WVTdS8UoXRMg-1
Received: from [IPV6:fd6e:ebcf:467e:2::1] (jpw.jasonjgw.net [IPv6:fd6e:ebcf:467e:2::1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (secp384r1) server-digest SHA384)
	(Client did not present a certificate)
	by svr.jasonjgw.net (Postfix) with ESMTPSA id 5FED932029
	for <blinux-list@redhat.com>; Thu, 28 Dec 2023 23:50:32 +0000 (UTC)
Message-ID: <e64cd0d1-e0a1-442d-b563-19292476b958@jasonjgw.net>
Date: Thu, 28 Dec 2023 18:50:31 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: "'Jason J.G. White' via blinux-list@redhat.com" <blinux-list@redhat.com>
Subject: a question about email clients?
References: <3fb121d7-e243-4f0d-b219-1cce9e4217c2@jasonjgw.net>
Reply-To: "Jason J.G. White" <jason@jasonjgw.net>
To: Linux for blind general discussion <blinux-list@redhat.com>
Autocrypt: addr=jason@jasonjgw.net; keydata=
 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
 Jlx6Ar305Q==
In-Reply-To: <3fb121d7-e243-4f0d-b219-1cce9e4217c2@jasonjgw.net>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: jasonjgw.net
Content-Language: en-US, en-AU-large, en-US-large
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: jason@jasonjgw.net
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) smtp.mailfrom=jason@jasonjgw.net
X-Original-From: "Jason J.G. White" <jason@jasonjgw.net>
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



On 28/12/23 16:52, Karen Lewellen wrote:
> Which server?
> The one where the mail comes from=C2=A0 or the one where you are using yo=
ur=20
> client to access?
> As I likely shared, this is an effort to use alpine to manage my gmail.
> If I follow, the=C2=A0 folder choices are provided by gmail, regardless o=
f=20
> what alpine incorporates?
It's the mail server that provides access to the folders and the=20
messages. What you get reflects the folder structure stored on the IMAP=20
server. You can usually create and delete folders, move messages, etc.

--=20
You received this message because you are subscribed to the Google Groups "=
blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

