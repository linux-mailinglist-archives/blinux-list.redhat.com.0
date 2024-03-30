Return-Path: <blinux-list+bncBDM4LSNO5MHBB64KUCYAMGQEINLBCKI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-oo1-f72.google.com (mail-oo1-f72.google.com [209.85.161.72])
	by mail.lfdr.de (Postfix) with ESMTPS id DF0CF892B38
	for <lists+blinux-list@lfdr.de>; Sat, 30 Mar 2024 13:28:45 +0100 (CET)
Received: by mail-oo1-f72.google.com with SMTP id 006d021491bc7-5a46b391b53sf2681720eaf.0
        for <lists+blinux-list@lfdr.de>; Sat, 30 Mar 2024 05:28:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711801724; cv=pass;
        d=google.com; s=arc-20160816;
        b=uk9xmYjFD4sM7Yrg9eTyY0/JqrbmWJHXDChDGYO+i/l2Ldcf22ewm90ozVbmWNb6Z5
         arW/8lBKkIIISmKYxBnnN0a11/K7noFgsYkuW+fXK4VY4c10Td9n1JKElPB+RZTrKGLq
         53D7lVcm7uzxyrQxGLZ8YAi0puXBbxklJ5rYMC/t34jTSg2InEFZ/mQ1FjHtprzcud//
         zHKdiEmOea+yOlQa/7ix3NmB8PQBWpAEZwvuf+hcdQZGwIlyKx2QifCR0MvQcHZ8nreX
         YxmBQnChPbWfqWdp1W9g5VbKzkPbk1CeEy+ktse/L+Cbk2BdXVYwAltAA77lQlv6NSyn
         knWA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-language:ui-outboundreport
         :in-reply-to:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=x8uaoLGxMe3e4n5bicMV3/CNb97fZ2UUleZF9W87ngc=;
        fh=Xa4ZJemdaRPfpZ4zH9Qzyhfx6z+gFwqTr1ORoXs2Pfg=;
        b=ByRO1/5mJZrfgotdH2y/NxiWb9rc/7zAodb6h2nENn+7o1NpUbWvfYsNryLfF1IvRA
         ZAAGVEp0HdkaebbV4J/4kXbOfZmHTQYjKXIVGdZqjVJv4SB1KqczKELw0A4+eAWGOoK/
         ecsl7NRHjZcGs8bVuvmKTpYCRbgg/ebDEkDaqIFu+AJWFNpyeSVPwuf0YqNSywtw0EBR
         SkPpH3pLIr7j1LEUABCwriFzhFZ3BkgJTWiYFUl9nAjkxhYkTk7Q1xsXCGtfzbQhsyP5
         UGiOAGEu84jQEanRJSRxXZMPbjkaKg8+xyMiDdsmx2ZcDCWS5UPOpbcNreWV6D+OmzOi
         MVnA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of johndoe65534@mail.com designates 74.208.4.201 as permitted sender) smtp.mailfrom=johndoe65534@mail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711801724; x=1712406524;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-language:ui-outboundreport:in-reply-to:from:references:to
         :subject:user-agent:mime-version:date:message-id:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=x8uaoLGxMe3e4n5bicMV3/CNb97fZ2UUleZF9W87ngc=;
        b=pgaGmyu0g0pepzuCphkSfFjNfIH6HwUrOfgarybD7Qqz5K3xJhwuZMduRTXh9g1kvy
         YQQ8W1o9OUK40e5k4AEDksjWdIfZNkfe9jI6CPRSxKpcfKnYbWsUf3BvZ61jdmv5TriG
         6px4kcbtvRAIwiGipU6MidsbQ0mBjM5F+ytkKJnviIMZLqQdKsLRS48nUXOYlDMGGFeH
         5NDCT0tiUU89aShx/eSUjCRhPiQOnHkdyiMHgJMUgSTwtrJkrEJqo8A2YMrGUrDc484p
         7+lsMGp2s2i4vXx4Gy52sv7ZojW0F4bEZN7Pal2ornhV8h9hsWOZ4zJA+R9fNNzpqOwJ
         J90Q==
X-Forwarded-Encrypted: i=2; AJvYcCWYYQnS8tWTcQKe4bj7w0NC6MS68CGndRuQLEz0JylUUA4p2oaxs4yQnOLGzqoS+nvXLMqjzjSHhgBrHpNRkI+qiKW2DmtlrWtv
X-Gm-Message-State: AOJu0YyxAPYoSP3rY7zPSR/Qo+0y9rfxRFOqiu5vZec0HNPaZlXJj4mb
	3h1T1toYm2wxe8Nh7Y4+O/u0h88pK4UZV4kx90Y4fxHXrn65aWMQnW0LOTZbygo=
X-Google-Smtp-Source: AGHT+IHV4pvz9C9ZZQjT7vO62xiI2tA7K3ZF5LDtAaIKKh35KgM/gMfXzGuI0c+dn6oozhd7itYe6Q==
X-Received: by 2002:a4a:4bc2:0:b0:5a5:2714:7e02 with SMTP id q185-20020a4a4bc2000000b005a527147e02mr3844127ooa.7.1711801724293;
        Sat, 30 Mar 2024 05:28:44 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a4a:b6cd:0:b0:5a4:3b6f:c4fa with SMTP id w13-20020a4ab6cd000000b005a43b6fc4fals2546871ooo.2.-pod-prod-02-us;
 Sat, 30 Mar 2024 05:28:43 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWHKnRn6+jC8YKqMq5X0N52qG9un5Yfr8gNu1/ovV7vtCSM9RhpU1EQ0INc1TwhKTcwRk/Fr7xx6iWnXlcojrR1j1bLoO1IzLx4z+8n
X-Received: by 2002:a9d:4e99:0:b0:6e7:fc5b:b8cc with SMTP id v25-20020a9d4e99000000b006e7fc5bb8ccmr4489129otk.8.1711801723304;
        Sat, 30 Mar 2024 05:28:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711801723; cv=none;
        d=google.com; s=arc-20160816;
        b=WV+QaB7NASyv12QtY473lKHbZbmj5wya5l6/Fljt13gxTSIOupSnT497ZAOLtoEBPf
         tP5L+Lp+gouNTATHcgeNscB8bMaDF6ZTAlcz9GAQr32QwFrK4qj2qde4qlckDySCKAWW
         hUkiqlpNzsfkr2EXPcbcxjJTzZahFQhGMoiXoxSsYpcEttxa3Rb47YJZPLzZqAgY+f9Z
         oBco2UEKBzJOUMFTww1iqf9hUn6j+RzTSWSAu6nMseBEetJK+osU9dh/AiqNLh4I7qc/
         uEXWIyvBUElFuUSsgLHXigpVssMOWIak+22yey1kcXt8SbNusQSLVGlc+NguFWt2/1Tq
         LqLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:ui-outboundreport
         :in-reply-to:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=aOwawPKTFs7P43Mcaftjiecwgv2rydJFuyILHOhGU5M=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=hlOtSU26mZhWgDTzQxN5Lnv2DrUT2NANMVY/smfJdVZYcCAvV+0VIZN3WT7rUUoHuW
         vIGk2NCspGMx8E0kCOHPtpV7Ad5YGHh6BDt07RHsJLeN9qSJ8IujoQ2c8hAFUMwowRDF
         hrs2nMf7oeMUZS7U05ZoTzMEG2BaWOG8hqs8a3aTqqYqQlw4nbARBVHWxcntqHuug5D+
         MgUbWkIIke2VaKE9dCzvThsgPYIFM3jJOo+x+tQNyu0aP0TKdB+UeXjEsbYSubrIDN3x
         fAIbiDhzPbNvR56ReiykGkeGSa1acrb9cq5bFR2ixIoYcSVLe9ALKL2xyvv6NNBSXjun
         4fgg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of johndoe65534@mail.com designates 74.208.4.201 as permitted sender) smtp.mailfrom=johndoe65534@mail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id v24-20020a05620a0a9800b0078bc8aa5fbcsi3447363qkg.737.2024.03.30.05.28.43
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 30 Mar 2024 05:28:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of johndoe65534@mail.com designates 74.208.4.201 as permitted sender) client-ip=74.208.4.201;
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-446-U62DOoSiMLuJKcaNFOZgdQ-1; Sat,
 30 Mar 2024 08:28:41 -0400
X-MC-Unique: U62DOoSiMLuJKcaNFOZgdQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com [10.11.54.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 89B3A38012DA
	for <blinux-list@gapps.redhat.com>; Sat, 30 Mar 2024 12:28:41 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 866742022EDB; Sat, 30 Mar 2024 12:28:41 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4CE412022EA7
	for <blinux-list@redhat.com>; Sat, 30 Mar 2024 12:28:40 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 629008007A1
	for <blinux-list@redhat.com>; Sat, 30 Mar 2024 12:28:40 +0000 (UTC)
Received: from mout.gmx.com (mout.gmx.com [74.208.4.201]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-20-lA3g6vLuNrevOkKn9WpWIQ-1; Sat,
 30 Mar 2024 08:28:37 -0400
X-MC-Unique: lA3g6vLuNrevOkKn9WpWIQ-1
X-UI-Sender-Class: f2cb72be-343f-493d-8ec3-b1efb8d6185a
Received: from johndoe65534.mail.com ([195.16.11.121]) by smtp.mail.com
 (mrgmxus004 [74.208.5.15]) with ESMTPSA (Nemesis) id 0MNr0H-1rtb5Q15jf-007Qev
 for <blinux-list@redhat.com>; Sat, 30 Mar 2024 13:23:35 +0100
Message-ID: <4fa4fe25-57ec-4aba-8180-64dc002daa52@mail.com>
Date: Sat, 30 Mar 2024 13:24:06 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: getjenux.sh script needs help
To: blinux-list@redhat.com
References: <12dcd2a2-bb2c-8f7b-04bc-ada4d107f077@panix.com>
From: john doe <johndoe65534@mail.com>
In-Reply-To: <12dcd2a2-bb2c-8f7b-04bc-ada4d107f077@panix.com>
X-Provags-ID: V03:K1:L+dXcjsFpE38J6tLuMWNlD5UP8SmaEzMC1N2BwvipqcwaKtf1Be
 DmAmYMmnfkaPXDi08AupK1k27CI2eCMAYVaXX0v1rlRosfwVxy+KFoc+wDZz/N49sNmrSeV
 0MlTnKeiX9leqcYbADS/WAGUVXMOIbv7ZhuRWhT/7mSKzN/T2zuOMkD+QGAVozjDSS7CUZr
 teTOTSl3/5fHCi0VyeY4Q==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:/TsFxhb4Y0M=;eaK4rJM901SBWnd/8dgZY4KYyF9
 DKFP0jc21hMfzFq4nx50UYi1N2lbS9tt2pyn28h1uFec+Lzb+ghbpuI8H7iOFSCBHgUow5ZfH
 528Yzr8+uCqJgrpIX2AshT6p8HB4N6/8fAfIqgLmnJxfudqVfI+oX9TzGQPrlXYtayih+GU5i
 gPJneaq7o2ebx+eLzEd/VJdMY9Zx95pxW+12Yu2eJt/INZks8HZu3yupCJhe6jJVkv8zWEKK3
 TJrW/OSC3mEJT8tC2MY23jxnqrxCtlKLJRYsadb1ktCRLHmRe5bNfxJpj14ehkw9uyKRF4iLG
 tdtAkxLJ/4G8afKeiAbQkVw59XwHggmk2G2NBtVGyoDs5MD8ew8RuaUGsM6T4hW2MEPtacAet
 olWihiEzhpteyshTf8mv2EtvjN9ETj37OiEKNtoL4o9Gnu11gVkIVK0mmo40IfEAzjA9MokQ7
 WoS6KTSIS0BsiXbjXVvsWk/GPMR5K27J/V1P/Z9dqxJBMfcUTQZo/WW5+g1prI2mzeN8vQMXM
 O+2wUkNHh/orUMkUMSzmmKXhXAlEH+onYiOEDy+/KW963idTI08FB81eQpOC0iEB/d3hmyFDr
 iVoKtFAFETvPk6Z+pg7qO+Z/VqhA5W7CjR5ExrSD4sO/DikntaJlYS/SLLNtIpcjJETzEMYiZ
 R/mw5qB4vAekns9JLnsfehWsWAkgEdIZ9pW0AMd2eVNr0HjKiYgqqJyH9EET+H0ezqHjtP8d/
 SS8QslO8xqVvMcBAD2Cn2lLUMFvaSlrcn65LlcGmWVUM5QA5S4HyuG6EsT9dJZqpET3vYsh54
 F7+11Xxzqty31uOhOxfs0XbTiVeZtSH+kbca6SXgTLEyeHMJZJvTQFVQRd5e5pHhGp3ILa7NA
 ekaWkOFKsnhXnbQ==
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Mimecast-Spam-Signature: yes
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.4
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: mail.com
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: johndoe65534@mail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of johndoe65534@mail.com designates 74.208.4.201 as permitted sender) smtp.mailfrom=johndoe65534@mail.com
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

On 3/29/24 22:42, Jude DaShiell wrote:
> #!/usr/bin/env bash
> # file: getjenux.sh - get jenux script
> wget -bc -o jenux.log https://nashcentral.duckdns.org/projects/Jenux-2024.03.21-tripple.iso.sha512 &&
> UPDATE='grep -ic error jenux.log'

You should use $() instead of '' for the value of the var or use the
grep CMD in the if itself.

> if [ $UPDATE -gt 0]; then
> echo "jenux likely had an update."

Please be mindful of the indentation ina conditional.

> fi
> wget -bc -a jenux.log https://nashcentral.duckdns.org/projects/Jenux-2024.03.26-tripple.iso
> cut here.
> As the script is now,
> $UPDATE will increment each time ERROR is found in jenux.log.
> What is not happening is the error message isn't appearing on the terminal

Because you are using the count option to grep.


> and the script doesn't exit yet.

Use exit to do so.

--
John Doe

-- 
You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

