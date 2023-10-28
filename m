Return-Path: <blinux-list+bncBCW5NIVR6ABBBHPB6SUQMGQECLK7TVY@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mail.lfdr.de (Postfix) with ESMTPS id 177267DA7F0
	for <lists+blinux-list@lfdr.de>; Sat, 28 Oct 2023 18:02:40 +0200 (CEST)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-66d857105b6sf34790876d6.3
        for <lists+blinux-list@lfdr.de>; Sat, 28 Oct 2023 09:02:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1698508958; cv=pass;
        d=google.com; s=arc-20160816;
        b=eXkz5SKX1tkTzFY4LqOJtOGTXqJfMZ8MvEPwH6lBsJgqL1Kc+4Opuhq8ITmRxcZgOy
         30Mvr0rqHVGv4jyWpMaRoBOwJOalKXHgd5cRANgNnOoXPw5/pdSNa8q0sHrC56t47zDt
         cyHYJX1wpJoSZNXJ8lH8vRN526utQ6zVm0016cyrqE8tLW/4QIH+4tn38FilXR4TjfGe
         jC6nkBxwJxeTbqFm+wvXZBunySE+6oyLBEpux1QBGU44HVZM3SLTGyiR/eI40LS1HUWD
         lILMROQIyXsAJL5JZHNJ3RBQTRayyMy9pH9jEHgAEl1iYRxIziSqr/UJZMILjy857Msk
         dsyg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-language:subject:from:to:user-agent
         :mime-version:date:message-id:delivered-to;
        bh=NJE6S8iEGfMoKPzAQ0oOereevAhiHGxvWcpzoq0Nats=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=Bli+l19hsI8S+0T4DpFwavHtua5B+DPMIHR0/ByDtn797p3VMSwI+g1kygsN8j5h5X
         nMHi4HH+1Tw9yeT3llNNnB/Mh8MVmJ1VKwEW/WMEpcBh4Bb/xesSbNmi6LuMVnMHTB4S
         WWn7Re9wUh4JNkmMxxZF6JjMU7SiFn69P0BOUSky1KcbAsD5FoVYK4DvTEGS7HVx18X4
         8OaH0ADr8aL1nJb9k+V/zPip8IgR8yqRQQ0LcnDqyj1uFaZ4xJI/qrI4lCK/cEzN+xxM
         q64GTswEsUjC0HW7yZJa8VMszShjOlytHqtPBw1dz29CtaluwE7FEpZblSLVU2xrEmql
         IOYw==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of vlcekpavel93@gmail.com designates 209.85.218.43 as permitted sender) smtp.mailfrom=vlcekpavel93@gmail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698508958; x=1699113758;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-language:subject:from:to:user-agent:mime-version:date
         :message-id:delivered-to:x-beenthere:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NJE6S8iEGfMoKPzAQ0oOereevAhiHGxvWcpzoq0Nats=;
        b=q6fEQ9NG8qM9Rxe6aRyf/zOId+CFZlGBdM7GRt6Vo9YcnNLzsgrCOIZaPjjEad7mwH
         9Mg4GGOX9foF3Q3VFSj3sX+ZUwAIumg8oIOyIwdpgKwiKIjYS/hglNhRyVauEBPkhBmp
         dqaCMG6h4h/3OQfDNkRoig9Se0XgIfXQO8fGDmi2mJk2LJeoy5V2BtscKWJmmuFg7pDn
         KuauHsIZYTE/Y0Oz0oP83dv7scsECJZe00htD16hjXH9qdLj3TkacwN3gT4RquNEwBrZ
         OCsvuD3sCsWmeVCUUSbJp45PJd7PkOtBybFkFxL4WQo6rZeP1Q1ppHvjAA3Cwf7AgMqh
         rwdw==
X-Gm-Message-State: AOJu0YxPdLbWePiY0ieaNr8C7aOe89fj7Y3piJrBRntuaVBtjJNLKhIS
	TFYzd8lXzCLPvotnQAzSQqp7vQ==
X-Google-Smtp-Source: AGHT+IGXOHYIdUvDDICeolbj+9QOHXlQevS3+Jf97yflY08QkoTiZ+iFuHUIAfS7phamK+EjtGt4Iw==
X-Received: by 2002:a05:6214:21aa:b0:66d:d6b:f24f with SMTP id t10-20020a05621421aa00b0066d0d6bf24fmr6275768qvc.50.1698508958250;
        Sat, 28 Oct 2023 09:02:38 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6214:2e46:b0:66d:871:cd95 with SMTP id
 my6-20020a0562142e4600b0066d0871cd95ls973690qvb.0.-pod-prod-08-us; Sat, 28
 Oct 2023 09:02:37 -0700 (PDT)
X-Received: by 2002:a05:6214:268d:b0:66d:bdd3:5d5 with SMTP id gm13-20020a056214268d00b0066dbdd305d5mr6876147qvb.0.1698508957491;
        Sat, 28 Oct 2023 09:02:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1698508957; cv=none;
        d=google.com; s=arc-20160816;
        b=uotLKvmlv3oCnNOqYxc3CPkLprlZBVAw6y2Oc+smrmnjgNa9wcdtCgHN078DyxMFRQ
         A14RtETIemTbEsKNHdCFG1YZ/9ITlfHynnTHjmVkJOszObw32jicYG8Wq8uNq0bYwzyB
         AwXsdDOKj3Y/upTJcK7ciSAPHWTjF5Jj8sFQNJzI4jrIaSqou+eQ2w4EsC45v2MFZQl+
         QkC5pfaNEa6jQsUMhWwlQXY4iCI51QhAn0E8ke6Gl747mILMIp1aCD8Ys060AtrVIXNY
         O6WIHGht0iDLNgiaiZ8pB2qF/237QT289RrEzVpJn4bq7dCznMQVKpOM/WKt7o9gzyZ7
         gJfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:subject:from:to
         :user-agent:mime-version:date:message-id:delivered-to;
        bh=GB9zAeovCmyWEO3uQ2v0nvphso4Wv24DDufBlG1ndwg=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=Iael+AUhdk6DA9JNxC25BrJE9YjLKT9YS1oaKZn/cdu0K02BVuY2zEj1zE39/T+ANT
         JZ1Ux0HAAKBcsQW3PbtMSw7VSFPQ1fvyjXzB4EEf26hhMBssJoAQp7J9tJkAs7IuS64I
         LA5hWGx3swegSF+f5jNoeGdiLcP2g617uPP5At7dcACUY4MFgxunSAG3n5W/9QDUFCzp
         bparQbJgiV7ai+1C2Za+5nsDcLKF8PgJ1p2ed1Ge7B3jyqv2EzQJeLnR96sXUEIRix5E
         FUz9ltDMSKhHxwzYqjFBlUyqn0F0zK/hexYKZks+gu0vz5NL8O8e0uB5qg5f8HWV3yDo
         ANxw==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of vlcekpavel93@gmail.com designates 209.85.218.43 as permitted sender) smtp.mailfrom=vlcekpavel93@gmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [207.211.31.120])
        by mx.google.com with ESMTPS id g13-20020a0cf08d000000b0065652a344fdsi2575397qvk.397.2023.10.28.09.02.37
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 28 Oct 2023 09:02:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of vlcekpavel93@gmail.com designates 209.85.218.43 as permitted sender) client-ip=209.85.218.43;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-487-UvCV2KuoMiyXIbMTekGe9w-1; Sat, 28 Oct 2023 12:02:31 -0400
X-MC-Unique: UvCV2KuoMiyXIbMTekGe9w-1
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com [10.11.54.10])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C64EB8021B1
	for <blinux-list@gapps.redhat.com>; Sat, 28 Oct 2023 16:02:30 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id C337D492BFC; Sat, 28 Oct 2023 16:02:30 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BBB87492BFD
	for <blinux-list@redhat.com>; Sat, 28 Oct 2023 16:02:30 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [207.211.31.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 9B3AD8678A2
	for <blinux-list@redhat.com>; Sat, 28 Oct 2023 16:02:30 +0000 (UTC)
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com
 [209.85.218.43]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-33-9FDQthq_Pbq8fiOotrx9qg-1; Sat, 28 Oct 2023 12:02:28 -0400
X-MC-Unique: 9FDQthq_Pbq8fiOotrx9qg-1
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-9bdf5829000so491564166b.0
        for <blinux-list@redhat.com>; Sat, 28 Oct 2023 09:02:28 -0700 (PDT)
X-Received: by 2002:a17:907:8f0d:b0:9bf:5771:a8cf with SMTP id wg13-20020a1709078f0d00b009bf5771a8cfmr3122936ejc.70.1698508946776;
        Sat, 28 Oct 2023 09:02:26 -0700 (PDT)
Received: from [192.168.1.4] ([78.80.191.29])
        by smtp.gmail.com with ESMTPSA id d24-20020a170906041800b0099b7276235esm2978818eja.93.2023.10.28.09.02.25
        for <blinux-list@redhat.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 28 Oct 2023 09:02:26 -0700 (PDT)
Message-ID: <9accf86c-3ce5-44e7-8495-822f2f363540@gmail.com>
Date: Sat, 28 Oct 2023 18:02:25 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: blinux-list@redhat.com
From: =?UTF-8?Q?Pavel_Vl=C4=8Dek?= <vlcekpavel93@gmail.com>
Subject: Dualboot remember last used os question
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.10
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmail.com
Content-Language: cs
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: vlcekpavel93@gmail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of vlcekpavel93@gmail.com designates 209.85.218.43 as permitted
 sender) smtp.mailfrom=vlcekpavel93@gmail.com
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

Hi,

because Gnome 45 is interesting, I installed Fedora 39 to my HP 255 G10 
laptop, this is my primary production computer. I turned off Bitlocker, 
secure boot and I have dual boot for now. Fedora is first boot entry, 
Windows 11 is second. And now, I have a question. Is some way to tell 
the UEFI about latest os and when restarting, it will restart to lastly 
used system? For example, when I want to restart Windows 11 and when I 
forget to press F9 and select it manually, it will start Fedora.

Apple had this great feature, when Mac was used, computer restarted to 
Mac, when Windows was used, computer restarted to Windows if needed.

Thanks,

Pavel


-- 
You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

